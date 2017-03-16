class DeleteAssignmentUnitIdFromDocuments < ActiveRecord::Migration
  def up
    remove_column :documents, :assignment_unit_id
  end

  def down
    add_column :documents, :assignment_unit_id, :integer
# στο console τρέχουμε
# Document.all.each { |d| d.assignment_unit_id=d.departments.first.id }
  end
end

