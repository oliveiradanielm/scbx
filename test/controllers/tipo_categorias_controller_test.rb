require 'test_helper'

class TipoCategoriasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_categoria = tipo_categorias(:one)
  end

  test "should get index" do
    get tipo_categorias_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_categoria_url
    assert_response :success
  end

  test "should create tipo_categoria" do
    assert_difference('TipoCategoria.count') do
      post tipo_categorias_url, params: { tipo_categoria: { descricao: @tipo_categoria.descricao } }
    end

    assert_redirected_to tipo_categoria_url(TipoCategoria.last)
  end

  test "should show tipo_categoria" do
    get tipo_categoria_url(@tipo_categoria)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_categoria_url(@tipo_categoria)
    assert_response :success
  end

  test "should update tipo_categoria" do
    patch tipo_categoria_url(@tipo_categoria), params: { tipo_categoria: { descricao: @tipo_categoria.descricao } }
    assert_redirected_to tipo_categoria_url(@tipo_categoria)
  end

  test "should destroy tipo_categoria" do
    assert_difference('TipoCategoria.count', -1) do
      delete tipo_categoria_url(@tipo_categoria)
    end

    assert_redirected_to tipo_categorias_url
  end
end
