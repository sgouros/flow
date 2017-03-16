class RenameDepartmentDescriptionToDepartmentName < ActiveRecord::Migration

  def change
    rename_column :departments, :description, :name
  end

end
