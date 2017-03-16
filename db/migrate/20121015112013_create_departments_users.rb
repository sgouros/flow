class CreateDepartmentsUsers < ActiveRecord::Migration
 def up
    create_table :departments_users, :id => false do |t|
      t.references :department
      t.references :user
    end
  end

  def down
    drop_table :departments_users
  end

end

