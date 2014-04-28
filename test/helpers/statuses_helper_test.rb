ENV["Rails_Env"] = "test"
#require File.expand_path('../../config/environments',_File_)
require 'test_helper'

class StatusesHelperTest < ActionView::TestCase
  fixtures :all
  
  test "that a status requires content" do
    status = Status.new
    assert !status.save
    asser :status.errors[:content].empty?
  end
  
end

#class ActionController::TestCase
#  include Devise:TestHelpers
#end
