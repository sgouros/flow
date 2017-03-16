class RenameAssignmentUnitsToDepartments < ActiveRecord::Migration

  def change
    rename_table :assignment_units, :departments
  end 

end
