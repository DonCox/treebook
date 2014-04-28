require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test "that the /login route opens the login page" do
    get '/login'
    assert_response | :successful
  end
  
  test "that the /logout route opens the logout page" do
    get '/logout'
    assert_response :redirect
    assert_response | '/'
  end
  
  test "that the /register route opens the registration page" do
    get '/register'
    assert_response | :successful
  end
  
end
