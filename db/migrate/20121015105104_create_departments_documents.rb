class CreateDepartmentsDocuments < ActiveRecord::Migration

 def up
    create_table :departments_documents, :id => false do |t|
      t.references :department
      t.references :document
    end
  end

  def down
    drop_table :departments_documents
  end

end
