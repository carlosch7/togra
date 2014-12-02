require 'test_helper'

class LocatesControllerTest < ActionController::TestCase
  setup do
    @locate = locates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:locates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create locate" do
    assert_difference('Locate.count') do
      post :create, locate: { alcalde: @locate.alcalde, departamento: @locate.departamento, fecha_inicio: @locate.fecha_inicio, gobernador: @locate.gobernador, municipio: @locate.municipio }
    end

    assert_redirected_to locate_path(assigns(:locate))
  end

  test "should show locate" do
    get :show, id: @locate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @locate
    assert_response :success
  end

  test "should update locate" do
    patch :update, id: @locate, locate: { alcalde: @locate.alcalde, departamento: @locate.departamento, fecha_inicio: @locate.fecha_inicio, gobernador: @locate.gobernador, municipio: @locate.municipio }
    assert_redirected_to locate_path(assigns(:locate))
  end

  test "should destroy locate" do
    assert_difference('Locate.count', -1) do
      delete :destroy, id: @locate
    end

    assert_redirected_to locates_path
  end
end
