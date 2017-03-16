class AddInstitutionIdToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :institution_id, :integer
  end
end
