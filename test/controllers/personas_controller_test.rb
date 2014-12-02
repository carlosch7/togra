require 'test_helper'

class PersonasControllerTest < ActionController::TestCase
  setup do
    @persona = personas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create persona" do
    assert_difference('Persona.count') do
      post :create, persona: { actiecom: @persona.actiecom, cajcomp: @persona.cajcomp, cedula: @persona.cedula, cualgrup: @persona.cualgrup, edad: @persona.edad, etnia: @persona.etnia, grupo_id: @persona.grupo_id, gruporel: @persona.gruporel, locate_id: @persona.locate_id, lugfam: @persona.lugfam, nivestu: @persona.nivestu, nombre: @persona.nombre, otra_id: @persona.otra_id, pension: @persona.pension, sectortrab: @persona.sectortrab, servsalud: @persona.servsalud, sexo: @persona.sexo, titul: @persona.titul }
    end

    assert_redirected_to persona_path(assigns(:persona))
  end

  test "should show persona" do
    get :show, id: @persona
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @persona
    assert_response :success
  end

  test "should update persona" do
    patch :update, id: @persona, persona: { actiecom: @persona.actiecom, cajcomp: @persona.cajcomp, cedula: @persona.cedula, cualgrup: @persona.cualgrup, edad: @persona.edad, etnia: @persona.etnia, grupo_id: @persona.grupo_id, gruporel: @persona.gruporel, locate_id: @persona.locate_id, lugfam: @persona.lugfam, nivestu: @persona.nivestu, nombre: @persona.nombre, otra_id: @persona.otra_id, pension: @persona.pension, sectortrab: @persona.sectortrab, servsalud: @persona.servsalud, sexo: @persona.sexo, titul: @persona.titul }
    assert_redirected_to persona_path(assigns(:persona))
  end

  test "should destroy persona" do
    assert_difference('Persona.count', -1) do
      delete :destroy, id: @persona
    end

    assert_redirected_to personas_path
  end
end
