require 'test_helper'

class TestControllerTest < ActionController::TestCase
  
  test 'can access to index until max is reached' do
    
    get :index
    assert_response :success
    
    get :index
    assert_response :success
    
    get :index
    assert_match "You exceeded your requests limit of 2. Try again", flash[:error]
    assert_response :redirect
  end
  
end
