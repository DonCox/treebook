require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "a user should enter a first name" do
    user = User.new
    assert !user.save
    assert !user.errors[:first_name].empty?
  end
  
  test "a user should enter a last name" do
    user = User.new
    assert !user.save
    assert !user.errors[:last_name].empty?
  end
  
  test "a user should enter a profile name" do
    user = User.new
    user.profile_name = users(:jason).profile_name
    

    assert !user.save
    #puts user.errors.inspect
    assert !user.errors[:profile_name].empty?
  end

  test "a user should have a profile name with no spaces" do
    user = User.new(first_name: "Jason", last_name: "Seifer", email: "jason2@teamtreehouse.com")
    user.password = user.password_confirmation"asdfasdf"
    user.profile_name = "My Profile with Spaces"
    
    assert !user.save
    assert !user.error[:profile_name].empty
    asser user.errors[:profile_name].include?("Must be formatted correctly.")
  
  
  test "test that a user can have a properly formatted profile name" do
    user = User.new(first_name: "Jason", last_name: "Seifer", email: "jason2@teamtreehouse.com")
    user.password = user.password_confirmation"asdfasdf"
    
    user.profile = "jasonseifer_1"
    assert user.valid?
  end
  
end
