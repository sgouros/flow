# encoding: UTF-8
require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "should create user" do
    u = User.new
    u.name            = 'Γιώργος'
    u.surname         = 'Σγούρος'
    u.email           = 'sgouros@remth1.gr' 
    u.phone           = '2531023320' 
    u.manager         = 'true'
    u.admin           = 'true'
    u.female          = 'false'
    u.password        = 'test565'
    u.hashed_password = '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'
    u.departments << departments(:tmima_a)
    u.departments << departments(:tmima_b)
    u.documents   << documents(:d4)
    u.documents   << documents(:d5)
    u.documents   << documents(:d6)
    assert u.save
  end

end

