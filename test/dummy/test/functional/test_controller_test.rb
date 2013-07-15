require 'test_helper'

class TestControllerTest < ActionController::TestCase
  
  test 'can access to index until max is reached' do
    
    get :index
    assert_response :success
    
    get :index
    assert_response :success
    
    get :index
    assert flash[:error].include?("You exceeded your requests limit of 2. Try again in 60 seconds")
    assert_response :redirect
  end
  
end