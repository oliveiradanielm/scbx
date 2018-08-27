require 'test_helper'

class CampeonatoDetalhesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campeonato_detalhe = campeonato_detalhes(:one)
  end

  test "should get index" do
    get campeonato_detalhes_url
    assert_response :success
  end

  test "should get new" do
    get new_campeonato_detalhe_url
    assert_response :success
  end

  test "should create campeonato_detalhe" do
    assert_difference('CampeonatoDetalhe.count') do
      post campeonato_detalhes_url, params: { campeonato_detalhe: { campeonato_id: @campeonato_detalhe.campeonato_id, categoria_id: @campeonato_detalhe.categoria_id, etapa_id: @campeonato_detalhe.etapa_id } }
    end

    assert_redirected_to campeonato_detalhe_url(CampeonatoDetalhe.last)
  end

  test "should show campeonato_detalhe" do
    get campeonato_detalhe_url(@campeonato_detalhe)
    assert_response :success
  end

  test "should get edit" do
    get edit_campeonato_detalhe_url(@campeonato_detalhe)
    assert_response :success
  end

  test "should update campeonato_detalhe" do
    patch campeonato_detalhe_url(@campeonato_detalhe), params: { campeonato_detalhe: { campeonato_id: @campeonato_detalhe.campeonato_id, categoria_id: @campeonato_detalhe.categoria_id, etapa_id: @campeonato_detalhe.etapa_id } }
    assert_redirected_to campeonato_detalhe_url(@campeonato_detalhe)
  end

  test "should destroy campeonato_detalhe" do
    assert_difference('CampeonatoDetalhe.count', -1) do
      delete campeonato_detalhe_url(@campeonato_detalhe)
    end

    assert_redirected_to campeonato_detalhes_url
  end
end
