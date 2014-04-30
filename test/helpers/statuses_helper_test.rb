ENV["Rails_Env"] = "test"
#require File.expand_path('../../config/environments',_File_)
require 'test_helper'

class StatusesHelperTest < ActionView::TestCase
  fixtures :all
  
  test "that a status requires content" do
    status = Status.new
    assert !status.save
    assert !status.errors[:content].empty?
  end
  
  test "status content at least two letters long" do
    status = Status.new
    status.content = "H"
    assert !status.save
    assert !status.errors[:conent].empty?
  end
  
  test "that a status has a user id" do
    status = Status.new
    status.content = "Hello"
    assert !status.save
    assert !status.errors[:content].empty?
  end
  
end

#class ActionController::TestCase
#  include Devise:TestHelpers
#end
