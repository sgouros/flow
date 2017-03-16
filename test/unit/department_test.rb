# encoding: UTF-8
require 'test_helper'

class DepartmentTest < ActiveSupport::TestCase

  test "should create department" do
    dep = Department.new
    dep.name = "Δοκιμαστικό department" 
    dep.documents << documents(:d1)
    dep.documents << documents(:d2)
    dep.users << users(:sgouros)
    dep.users << users(:angelina)
    assert dep.save
  end

end









