require 'test_helper'

class UrlsControllerTest < ActionController::TestCase
  test "should get redirectors" do
    get :redirectors
    assert_response :success
  end

  test "should get preview" do
    get :preview
    assert_response :success
  end

end
