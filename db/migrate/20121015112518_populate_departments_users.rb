class PopulateDepartmentsUsers < ActiveRecord::Migration
  def up
#    User.find_by_id(1).departments << Department.find_by_id(4); User.find_by_id(2).departments << Department.find_by_id(3);User.find_by_id(3).departments << Department.find_by_id(3); User.find_by_id(3).departments << Department.find_by_id(4); User.find_by_id(4).departments << Department.find_by_id(3); User.find_by_id(4).departments << Department.find_by_id(4); User.find_by_id(5).departments << Department.find_by_id(3); User.find_by_id(5).departments << Department.find_by_id(4); User.find_by_id(6).departments << Department.find_by_id(3); User.find_by_id(7).departments << Department.find_by_id(3); User.find_by_id(8).departments << Department.find_by_id(3); User.find_by_id(8).departments << Department.find_by_id(4); User.find_by_id(9).departments << Department.find_by_id(3); User.find_by_id(9).departments << Department.find_by_id(4)
    User.find_by_id(1).departments << Department.find_by_id(4)
    User.find_by_id(2).departments << Department.find_by_id(3) 
    User.find_by_id(3).departments << Department.find_by_id(3)
    User.find_by_id(3).departments << Department.find_by_id(4)
    User.find_by_id(4).departments << Department.find_by_id(3)
    User.find_by_id(4).departments << Department.find_by_id(4)
    User.find_by_id(5).departments << Department.find_by_id(3)
    User.find_by_id(5).departments << Department.find_by_id(4)
    User.find_by_id(6).departments << Department.find_by_id(3)
    User.find_by_id(7).departments << Department.find_by_id(3)
    User.find_by_id(8).departments << Department.find_by_id(3)
    User.find_by_id(8).departments << Department.find_by_id(4)  
    User.find_by_id(9).departments << Department.find_by_id(3)
    User.find_by_id(9).departments << Department.find_by_id(4)
  end

  def down
  end
end


