class AddRegisteredToCentralProtocolDbField < ActiveRecord::Migration
  def change
    add_column :documents, :registered_to_central_protocol_db, :boolean, :default => false
  end
end

# στο rails console πρέπει να τρέξει
# Document.update_all("registered_to_central_protocol_db = 'true'")
# Document.update_all("registered_to_central_protocol_db = 'false'", "dispatch_stage_id=5 AND id>2500")
