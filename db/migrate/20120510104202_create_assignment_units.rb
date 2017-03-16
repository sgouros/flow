class CreateAssignmentUnits < ActiveRecord::Migration
  def change
    create_table :assignment_units do |t|

      t.timestamps
    end
  end
end
