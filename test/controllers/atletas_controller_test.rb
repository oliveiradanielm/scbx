require 'test_helper'

class AtletasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atleta = atletas(:one)
  end

  test "should get index" do
    get atletas_url
    assert_response :success
  end

  test "should get new" do
    get new_atleta_url
    assert_response :success
  end

  test "should create atleta" do
    assert_difference('Atleta.count') do
      post atletas_url, params: { atleta: { bairro: @atleta.bairro, cep: @atleta.cep, cidade: @atleta.cidade, codigo_uci: @atleta.codigo_uci, complemento: @atleta.complemento, cpf: @atleta.cpf, data_nascimento: @atleta.data_nascimento, email: @atleta.email, licenca_cbc: @atleta.licenca_cbc, logradouro: @atleta.logradouro, nacionalidade: @atleta.nacionalidade, naturalidade: @atleta.naturalidade, nome: @atleta.nome, nome_mae: @atleta.nome_mae, nome_pai: @atleta.nome_pai, numero: @atleta.numero, passaporte: @atleta.passaporte, rg: @atleta.rg, sexo: @atleta.sexo, telefone_celular: @atleta.telefone_celular, telefone_residencial: @atleta.telefone_residencial, tipo_sanguineo_id: @atleta.tipo_sanguineo_id, uf: @atleta.uf, validade_passaporte: @atleta.validade_passaporte } }
    end

    assert_redirected_to atleta_url(Atleta.last)
  end

  test "should show atleta" do
    get atleta_url(@atleta)
    assert_response :success
  end

  test "should get edit" do
    get edit_atleta_url(@atleta)
    assert_response :success
  end

  test "should update atleta" do
    patch atleta_url(@atleta), params: { atleta: { bairro: @atleta.bairro, cep: @atleta.cep, cidade: @atleta.cidade, codigo_uci: @atleta.codigo_uci, complemento: @atleta.complemento, cpf: @atleta.cpf, data_nascimento: @atleta.data_nascimento, email: @atleta.email, licenca_cbc: @atleta.licenca_cbc, logradouro: @atleta.logradouro, nacionalidade: @atleta.nacionalidade, naturalidade: @atleta.naturalidade, nome: @atleta.nome, nome_mae: @atleta.nome_mae, nome_pai: @atleta.nome_pai, numero: @atleta.numero, passaporte: @atleta.passaporte, rg: @atleta.rg, sexo: @atleta.sexo, telefone_celular: @atleta.telefone_celular, telefone_residencial: @atleta.telefone_residencial, tipo_sanguineo_id: @atleta.tipo_sanguineo_id, uf: @atleta.uf, validade_passaporte: @atleta.validade_passaporte } }
    assert_redirected_to atleta_url(@atleta)
  end

  test "should destroy atleta" do
    assert_difference('Atleta.count', -1) do
      delete atleta_url(@atleta)
    end

    assert_redirected_to atletas_url
  end
end
