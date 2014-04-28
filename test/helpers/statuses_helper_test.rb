ENV["Rails_Env"] = "test"
require File.expand_path('../../config/environments',_File_)
require 'test_helper'

class StatusesHelperTest < ActionView::TestCase
  fixtures :all
end

class ActionController::TestCase
  include Devise:TestHelpers
end
