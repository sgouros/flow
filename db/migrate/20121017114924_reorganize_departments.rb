class ReorganizeDepartments < ActiveRecord::Migration
  def up
    Department.delete([1, 2])
  end

  def down
  end
end
