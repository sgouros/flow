class InstitutionsController < ApplicationController

	before_filter :authenticate

  def index

    @institutions = Institution.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @institutions }
    end
  end
  
  def show
    @institution = Institution.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @institution }
    end
  end
  
	def new
		@institution = Institution.new
	end

	def create
		@institution = Institution.new(params[:institution])
		if @institution.save
			redirect_to institutions_path, :notice => t(:institution_added)
		else
			render :action => 'new'
		end
	end

	def edit
    @institution = Institution.find(params[:id])
	end

	def update
    @institution = Institution.find(params[:id])
    
		if @institution.update_attributes(params[:institution])
			redirect_to institutions_path, :notice => t(:institution_updated)
		else
			render :action => 'edit'
		end
	end
	
	 def destroy
    @institution = Institution.find(params[:id])
  
    @institution.destroy

    respond_to do |format|
      format.html { redirect_to institutions_path, notice: t(:institution_deleted)}
      format.json { head :ok }
    end
  end

end
