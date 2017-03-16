class AddOwnerIdToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :owner_id, :integer
  end
end
