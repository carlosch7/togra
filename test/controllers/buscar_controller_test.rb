require 'test_helper'

class BuscarControllerTest < ActionController::TestCase
  test "should get form" do
    get :form
    assert_response :success
  end

  test "should get mosa" do
    get :mosa
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
