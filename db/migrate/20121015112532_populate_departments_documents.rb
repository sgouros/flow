class PopulateDepartmentsDocuments < ActiveRecord::Migration
  def up
    Document.all.each { |d| d.departments << Department.find_by_id(d.assignment_unit_id) }
  end

  def down
  end
end

