class RemoveUserIdFromDocuments < ActiveRecord::Migration
  def up
    remove_column :documents, :user_id
  end

  def down
  end
end
