class CreateDispatchStages < ActiveRecord::Migration
  def change
    create_table :dispatch_stages do |t|
      t.string :description

      t.timestamps
    end
  end
end
