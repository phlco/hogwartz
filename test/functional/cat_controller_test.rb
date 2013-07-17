require 'test_helper'

class CatControllerTest < ActionController::TestCase
  test "should get sleep" do
    get :sleep
    assert_response :success
  end

end
