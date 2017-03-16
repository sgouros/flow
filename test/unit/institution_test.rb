# encoding: UTF-8
require 'test_helper'

class InstitutionTest < ActiveSupport::TestCase

  test "should create institution" do
    i = Institution.new
    i.name='Δοκιμαστικός φορέας (institution)' 
    assert i.save
  end

end
