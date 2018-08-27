require 'test_helper'

class BateriasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bateria = baterias(:one)
  end

  test "should get index" do
    get baterias_url
    assert_response :success
  end

  test "should get new" do
    get new_bateria_url
    assert_response :success
  end

  test "should create bateria" do
    assert_difference('Bateria.count') do
      post baterias_url, params: { bateria: { campeonato_detalhe_id: @bateria.campeonato_detalhe_id, complemento: @bateria.complemento, numero: @bateria.numero, tipo_bateria_id: @bateria.tipo_bateria_id } }
    end

    assert_redirected_to bateria_url(Bateria.last)
  end

  test "should show bateria" do
    get bateria_url(@bateria)
    assert_response :success
  end

  test "should get edit" do
    get edit_bateria_url(@bateria)
    assert_response :success
  end

  test "should update bateria" do
    patch bateria_url(@bateria), params: { bateria: { campeonato_detalhe_id: @bateria.campeonato_detalhe_id, complemento: @bateria.complemento, numero: @bateria.numero, tipo_bateria_id: @bateria.tipo_bateria_id } }
    assert_redirected_to bateria_url(@bateria)
  end

  test "should destroy bateria" do
    assert_difference('Bateria.count', -1) do
      delete bateria_url(@bateria)
    end

    assert_redirected_to baterias_url
  end
end
