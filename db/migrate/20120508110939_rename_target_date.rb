class RenameTargetDate < ActiveRecord::Migration
  def up
    rename_column :documents, :tartget_date, :target_date
  end

  def down
  end
end
