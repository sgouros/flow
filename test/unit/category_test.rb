# encoding: UTF-8
require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  test "should create category" do
    new_category = Category.new
    new_category.description = "Δοκιμαστική category" 
    assert new_category.save
  end

end
