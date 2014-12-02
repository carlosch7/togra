require 'test_helper'

class OtrasControllerTest < ActionController::TestCase
  setup do
    @otra = otras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:otras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create otra" do
    assert_difference('Otra.count') do
      post :create, otra: { cualfuen: @otra.cualfuen, cuantarj: @otra.cuantarj, cuentab: @otra.cuentab, fuenteingre: @otra.fuenteingre, grupo_id: @otra.grupo_id, locate_id: @otra.locate_id, numcuent: @otra.numcuent, prestam: @otra.prestam, tarjetdc: @otra.tarjetdc, tipoprestamo: @otra.tipoprestamo }
    end

    assert_redirected_to otra_path(assigns(:otra))
  end

  test "should show otra" do
    get :show, id: @otra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @otra
    assert_response :success
  end

  test "should update otra" do
    patch :update, id: @otra, otra: { cualfuen: @otra.cualfuen, cuantarj: @otra.cuantarj, cuentab: @otra.cuentab, fuenteingre: @otra.fuenteingre, grupo_id: @otra.grupo_id, locate_id: @otra.locate_id, numcuent: @otra.numcuent, prestam: @otra.prestam, tarjetdc: @otra.tarjetdc, tipoprestamo: @otra.tipoprestamo }
    assert_redirected_to otra_path(assigns(:otra))
  end

  test "should destroy otra" do
    assert_difference('Otra.count', -1) do
      delete :destroy, id: @otra
    end

    assert_redirected_to otras_path
  end
end
