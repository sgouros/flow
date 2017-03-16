class CreateDocumentsUsers < ActiveRecord::Migration
  def up
    create_table :documents_users, :id => false do |t|
      t.references :document
      t.references :user
    end
  end

  def down
    drop_table :documents_users
  end
end
