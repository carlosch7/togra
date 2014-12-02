require 'test_helper'

class AutenticarControllerTest < ActionController::TestCase
  test "should get aut" do
    get :aut
    assert_response :success
  end

  test "should get out" do
    get :out
    assert_response :success
  end

  test "should get salu" do
    get :salu
    assert_response :success
  end

end
