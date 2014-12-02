require 'test_helper'

class InfoControllerTest < ActionController::TestCase
  test "should get alcaldia" do
    get :alcaldia
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get info" do
    get :info
    assert_response :success
  end

end
