class AddDescriptionToAssignmentUnits < ActiveRecord::Migration
  def change
    add_column :assignment_units, :description, :string
  end
end
