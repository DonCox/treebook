require 'test_helper'
#require "minitest/autorun"
#require 'active_support'
#require 'active_support/deprecation'
#require 'activerecord-nulldb-adapter'

class UserFriendshipTest < ActiveSupport::TestCase
  should belong_to(:user)
  should belong_to(:friend)
  
  test "that crteating a friendship word" do
    assert_nothing_raised do
      UserFriendship.create user: users(:jason), friend: users(:mike)
    end
  end
  
  test "that creatimg a friendship based on user id and friend id works" do
    UserFriendship.create user_id: users(:jason).id, friend_id: users(:mike).id
    assert users(:jason).friends.include?(users(:mike))
  end
end
