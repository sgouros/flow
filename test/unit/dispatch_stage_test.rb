# encoding: UTF-8
require 'test_helper'

class DispatchStageTest < ActiveSupport::TestCase
 
  test "should create dispatch stage" do
    new_dispatch_stage = DispatchStage.new
    new_dispatch_stage.description = "Δοκιμαστικό dispatch stage" 
    assert new_dispatch_stage.save
  end

end
