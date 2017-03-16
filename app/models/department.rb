class Department < ActiveRecord::Base
  has_and_belongs_to_many :documents
  has_and_belongs_to_many :users


  def pending_documents
    Document.joins(:departments).where("departments.id=? AND documents.dispatch_stage_id<? ", id, G::DDS_DISPATCHED).order("documents.dispatch_stage_id, documents.assignment_date")
  end

  def overdue_documents
    Document.joins(:departments).where("departments.id=? AND documents.dispatch_stage_id<? AND documents.dispatch_deadline<?", id,
 G::DDS_DISPATCHED, Date.today).order("documents.dispatch_stage_id, documents.dispatch_deadline")
  end

  def inspect
    text = "\n\n" +
    "Department id:"                + "#{id}"               + "\n" +
    "\tname:"             + "\t\t"  + "#{name}"             + "\n" +
    "\tcreated_at:"       + "\t"    + "#{created_at}"       + "\n" +
    "\tupdated_at:"       + "\t"    + "#{updated_at}"       + "\n" 

    text+="\tusers:"
    users.each do |u|
      text+="\t\t"   + "#{u.id}"+" "+"#{u.full_name}"         + "\n"+"\t"
    end
#    text+="\n"
    text

  end


end
