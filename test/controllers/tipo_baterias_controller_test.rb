require 'test_helper'

class TipoBateriasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_bateria = tipo_baterias(:one)
  end

  test "should get index" do
    get tipo_baterias_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_bateria_url
    assert_response :success
  end

  test "should create tipo_bateria" do
    assert_difference('TipoBateria.count') do
      post tipo_baterias_url, params: { tipo_bateria: { descricao: @tipo_bateria.descricao } }
    end

    assert_redirected_to tipo_bateria_url(TipoBateria.last)
  end

  test "should show tipo_bateria" do
    get tipo_bateria_url(@tipo_bateria)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_bateria_url(@tipo_bateria)
    assert_response :success
  end

  test "should update tipo_bateria" do
    patch tipo_bateria_url(@tipo_bateria), params: { tipo_bateria: { descricao: @tipo_bateria.descricao } }
    assert_redirected_to tipo_bateria_url(@tipo_bateria)
  end

  test "should destroy tipo_bateria" do
    assert_difference('TipoBateria.count', -1) do
      delete tipo_bateria_url(@tipo_bateria)
    end

    assert_redirected_to tipo_baterias_url
  end
end
