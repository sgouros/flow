class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
   
      t.string	:name
      t.string	:surname
      t.string	:email
      t.string	:hashed_password
      t.string	:phone
      t.boolean	:manager

      t.timestamps
    end
  end
end




