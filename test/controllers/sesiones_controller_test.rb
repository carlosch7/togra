require 'test_helper'

class SesionesControllerTest < ActionController::TestCase
  test "should get entrar" do
    get :entrar
    assert_response :success
  end

  test "should get hola" do
    get :hola
    assert_response :success
  end

  test "should get salir" do
    get :salir
    assert_response :success
  end

end
