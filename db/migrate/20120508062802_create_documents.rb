class CreateDocuments < ActiveRecord::Migration
  def change
  
    create_table :documents do |t|
    
      t.string	  :source_name
      t.string	  :source_protocol
      t.datetime	:source_date
      t.string	  :target_protocol
      t.datetime	:tartget_date
      t.text	    :subject
      t.integer	  :category_id
      t.integer	  :assignment_unit_id
      t.datetime	:assignment_date
      t.integer	  :user_id
      t.text	    :task
      t.datetime	:dispatch_deadline
      t.integer	  :dispatch_stage_id
      t.string	  :dispatch_protocol
      t.datetime	:dispatch_date
      t.text	    :comments
      t.timestamps
      
    end
    
  end
end
