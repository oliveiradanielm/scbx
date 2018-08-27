require 'test_helper'

class BateriaDetalhesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bateria_detalhe = bateria_detalhes(:one)
  end

  test "should get index" do
    get bateria_detalhes_url
    assert_response :success
  end

  test "should get new" do
    get new_bateria_detalhe_url
    assert_response :success
  end

  test "should create bateria_detalhe" do
    assert_difference('BateriaDetalhe.count') do
      post bateria_detalhes_url, params: { bateria_detalhe: { bateria_id: @bateria_detalhe.bateria_id, inscricao_id: @bateria_detalhe.inscricao_id, raia: @bateria_detalhe.raia, resultado: @bateria_detalhe.resultado } }
    end

    assert_redirected_to bateria_detalhe_url(BateriaDetalhe.last)
  end

  test "should show bateria_detalhe" do
    get bateria_detalhe_url(@bateria_detalhe)
    assert_response :success
  end

  test "should get edit" do
    get edit_bateria_detalhe_url(@bateria_detalhe)
    assert_response :success
  end

  test "should update bateria_detalhe" do
    patch bateria_detalhe_url(@bateria_detalhe), params: { bateria_detalhe: { bateria_id: @bateria_detalhe.bateria_id, inscricao_id: @bateria_detalhe.inscricao_id, raia: @bateria_detalhe.raia, resultado: @bateria_detalhe.resultado } }
    assert_redirected_to bateria_detalhe_url(@bateria_detalhe)
  end

  test "should destroy bateria_detalhe" do
    assert_difference('BateriaDetalhe.count', -1) do
      delete bateria_detalhe_url(@bateria_detalhe)
    end

    assert_redirected_to bateria_detalhes_url
  end
end
