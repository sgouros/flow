class DeleteSourceNameFromDocuments < ActiveRecord::Migration
  def up
    remove_column :documents, :source_name
  end

  def down
    add_column :documents, :source_name, :string
  end
end
