# encoding: UTF-8
require 'docx_builder'
  
class DocumentsController < ApplicationController
 	
 	before_filter :authenticate
 
  def index
#    @side_menu_file="side_menu.html.erb"
      
    @documents = Document.joins(:users).where("users.id = ? ", current_user.id).order("documents.dispatch_deadline, documents.dispatch_stage_id").page(params[:page]).per(20)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @documents }
    end
  end

  def all_documents
    all_documents=[]
    Department.all.each do |dep|
      dep.documents.each do |doc|
        all_documents << doc
      end
    end
    @documents= Kaminari.paginate_array(all_documents).page(params[:page]).per(50)
  end

  def show
    @document = Document.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @document }
    end
  end

  def new
    @document = Document.new
    @document.owner=current_user

    setup_institutions_for_select_box      

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @document }
    end
  end

  def edit
    doc=Document.find(params[:id])

    setup_institutions_for_select_box      

    if current_user.admin? or doc.owned_by?(current_user) or current_user.manager?
      @document=doc
      @must_disable_some_controls = false
    else
      @document = current_user.documents.find(params[:id])
      @must_disable_some_controls = true
    end

    @document.dispatch_date=Date.today+1 unless @document.dispatched? 

  end


  def create
    @document = current_user.documents.new(params[:document])  
    @document.owner = current_user

    setup_institutions_for_select_box  

    respond_to do |format|
      if @document.save         
        format.html { redirect_to @document, notice: t(:document_created) }
        format.json { render json: @document, status: :created, location: @document }
      else
        format.html { render action: "new" }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    params[:document][:department_ids] ||= [] # το βάζουμε για όταν ξετσεκάρουμε τελείως τα departments http://railscasts.com/episodes/17-habtm-checkboxes?view=asciicast
#   params[:document][:user_ids] ||= []
 
    doc=Document.find(params[:id])

    setup_institutions_for_select_box  
    
    if current_user.admin? or doc.owned_by?(current_user) or current_user.manager?
      @document=doc
      @must_disable_some_controls = false
    else
      @document = current_user.documents.find(params[:id])
      @must_disable_some_controls = true
    end

    if @document.archived?
      @document.dispatch_protocol=""
    end

    respond_to do |format|
    	if @document.update_attributes(params[:document]) 
      	format.html { redirect_to @document, notice: t(:document_updated) }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end

  end


  def destroy
    doc= Document.find(params[:id])
    
    if current_user.admin? or doc.owned_by?(current_user)
      @document=doc
    else
      @document = current_user.documents.find(params[:id])
    end
  
    @document.destroy

    respond_to do |format|
      format.html { redirect_to :root, notice: t(:document_deleted)}
      format.json { head :ok }
    end
  end
  
  # https://we.riseup.net/rails/simple-search-tutorial
  def search
    
  end

  def search_results 
    condition = "%" + params[:search] + "%"   
    @documents = Document.where("(documents.subject LIKE ? OR documents.target_protocol LIKE ? OR documents.source_protocol LIKE ? OR documents.comments LIKE ?)",
          condition, condition, condition, condition).order("documents.dispatch_stage_id, documents.dispatch_deadline").page(params[:page]).per(20)
  end 
  
  # Τα έγγραφα του current_user τα οποία είναι ακόμη αδιεκπεραίωτα
  def my_pending_documents
    @documents=Document.joins(:users).where("users.id = ? AND documents.dispatch_stage_id < ?", 
      current_user.id, G::DDS_DISPATCHED).order("documents.dispatch_stage_id, documents.dispatch_deadline").page(params[:page]).per(20)  
  end
  
  def my_overdue_documents
    @documents = Document.joins(:users).where("users.id = ? AND documents.dispatch_stage_id < ? AND documents.dispatch_deadline < ?", 
       current_user.id, G::DDS_DISPATCHED, Date.today).order("documents.dispatch_stage_id, documents.dispatch_deadline").page(params[:page]).per(20)
  end
  

  def pending_documents
    @departments = Department.joins(:documents).where("documents.dispatch_stage_id < ?",
        G::DDS_DISPATCHED).group("departments.id").order("departments.id").page(params[:page]) 
    # Τα documents θα αναζητηθούν για κάθε έναν από αυτούς τους χρήστες δειχτούν μέσα από την view
  end

# ΟRIGINAL ---------------------------------------
   # Δείχνει όλους τους χειριστές. Σε κάθε χειριστή, δείχνει και τι έγγραφα έχουν ανατεθεί από τον current_user
#  def pending_documents
    # Πρώτα βρίσκω όλους τους users που έχουν assigned documents από τον current user (owner)
#    @users = User.joins(:documents).where("(documents.owner_id = ?) AND (documents.dispatch_stage_id < ?)", 
#                                                             current_user.id , 3).group("users.id").order("users.surname").page(params[:page]) 
    # Τα documents θα αναζητηθούν για κάθε έναν από αυτούς τους χρήστες δειχτούν μέσα από την view
#  end
# ΟRIGINAL END ---------------------------------------

  
  def overdue_documents
   
     @departments = Department.joins(:documents).where(" (documents.dispatch_stage_id < ?) AND (documents.dispatch_deadline < ?)", 
                               G::DDS_DISPATCHED, Date.today).group("departments.id").order("departments.id").page(params[:page]) 
  end
  
  def archived
    @documents =Document.where("registered_to_central_protocol_db=? AND dispatch_stage_id=?",
                              false, G::DDS_ARCHIVED).order("documents.id DESC").limit(50)
  end
  
  def register_to_central_protocol_db
    Document.update_all(["registered_to_central_protocol_db=?", 'true'], :id => params[:document_ids])

    respond_to do |format|
      format.html { redirect_to archived_documents_path, notice: t(:documents_removed_from_list)}
      format.json { head :ok }
    end
  end


  def george
    file_path = "#{File.dirname(__FILE__)}/docx_ppi_undertaking_template/template.xml"
    dir_path = "#{File.dirname(__FILE__)}/docx_ppi_undertaking_template/template"
    
    report = DocxBuilder.new(file_path, dir_path).build do |document_template|        
      document_template['doc']['t_ada'] = "ΕΑ15/ΛΨ/412"       
      document_template['doc']['t_protocol_date'] = "12.02.2012"         
      document_template['doc']['t_protocol_number'] = "1275/4546"   
      document_template['doc']['t_contact_address_line_1'] = "Γ. Κακουλίδου 1"    
      document_template['doc']['t_contact_address_line_2'] = "69100, Κομοτηνή"    
      document_template['doc']['t_contact_person'] = "Γ. Σγούρος"      
      document_template['doc']['t_contact_phone'] = "25313 52127"    
      document_template['doc']['t_contact_fax'] = "25313 52184"               
      document_template['doc']['t_contact_email'] = "sgouros@yahoo.com"
      document_template['doc']['t_ta_no_1'] = "1."     
      document_template['doc']['t_ta_no_2'] = "2."
      document_template['doc']['t_ta_no_3'] = "3."
      document_template['doc']['t_cc_no_1'] = "1."
      document_template['doc']['t_cc_no_2'] = "2."
      document_template['doc']['t_cc_no_3'] = "3."
      document_template['doc']['t_cc_no_4'] = "4."
      document_template['doc']['t_target_address_1'] = "Ενδιάμεση Διαχειριστική Αρχή ΠΑΜΘ1      "+"\r\n"+"Ηροδότου 28, 69100, Κομοτηνή1"
      document_template['doc']['t_target_address_2'] = "Ενδιάμεση Διαχειριστική Αρχή ΠΑΜΘ1"+"\n"+"Ηροδότου 28, 69100, Κομοτηνή1"
      document_template['doc']['t_target_address_3'] = "Ενδιάμεση Διαχειριστική Αρχή ΠΑΜΘ1"+"\n"+"Ηροδότου 28, 69100, Κομοτηνή1"
      document_template['doc']['t_cc_address_1'] = "Ενδιάμεση Διαχειριστική Αρχή ΠΑΜΘ1"+"\n"+"Ηροδότου 28, 69100, Κομοτηνή1"
      document_template['doc']['t_cc_address_2'] = "Ενδιάμεση Διαχειριστική Αρχή ΠΑΜΘ1"+"\n"+"Ηροδότου 28, 69100, Κομοτηνή1"
      document_template['doc']['t_cc_address_3'] = "Ενδιάμεση Διαχειριστική Αρχή ΠΑΜΘ1"+"\n"+"Ηροδότου 28, 69100, Κομοτηνή1"
      document_template['doc']['t_cc_address_4'] = "Ενδιάμεση Διαχειριστική Αρχή ΠΑΜΘ1"+"\n"+"Ηροδότου 28, 69100, Κομοτηνή1"
      document_template['doc']['t_subject'] = "Έγκριση Διάθεσης Πίστωσης"
      document_template['doc']['t_collective_decision'] = "ΣΑΕΠ 031/8"      
      document_template['doc']['t_collective_decision_year'] = "2012"   
      document_template['doc']['t_collective_decision_central_authority'] = "Ανάπτυξης, Ανταγωνιστικότητας και Ναυτιλίας"      
      document_template['doc']['t_application_protocol'] = "2277"
      document_template['doc']['t_application_date'] = "02.01.2012"
      document_template['doc']['t_implementing_agency'] = "Δήμου Παγγαίου"
      document_template['doc']['t_project_title'] = "Αναβάθμιση τοπικού οδικού δικτύου Δήμου Χρυσούπολης"
      document_template['doc']['t_subproject'] = "1 - Αναβάθμιση τοπικού οδικού δικτύου Δήμου Χρυσούπολης"
      document_template['doc']['t_iis_project_code'] = "45123"
      document_template['doc']['t_ppi_project_code'] = "2009ΕΠ03180047"  
      document_template['doc']['t_requested_amount'] = "647.000,45"   
      document_template['doc']['t_user_full_name'] = "Γεώργιος Σγούρος"   
      document_template['doc']['t_supervisor_full_name'] = "Σιλειάνα Αγγελίνα" 
      document_template['doc']['t_manager_title'] = "H Αναπληρώτρια προϊσταμένη της Διεύθυνσης" 
      document_template['doc']['t_manager_full_name'] = "Μαρίνα Κούρου" 
    end
    
 #   debugger
 
# <!-- BEGIN DOC -->   
# <!-- END DOC -->  
    open("example.docx", "w") { |file| file.write(report) }
    response.headers['Content-disposition'] = 'attachment; filename=plan_report.docx'
    render :text => report, :content_type => 'application/vnd.openxmlformats-officedocument.wordprocessingml.document'
  end
    
  def setup_institutions_for_select_box  
    @institutions_for_select_box = Institution.all.collect{|i| [i.name, i.id]}
    i @institutions_for_select_box.inspect
  end
  
end



