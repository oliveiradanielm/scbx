require "application_system_test_case"

class AtletasTest < ApplicationSystemTestCase
  setup do
    @atleta = atletas(:one)
  end

  test "visiting the index" do
    visit atletas_url
    assert_selector "h1", text: "Atletas"
  end

  test "creating a Atleta" do
    visit atletas_url
    click_on "New Atleta"

    fill_in "Bairro", with: @atleta.bairro
    fill_in "Cep", with: @atleta.cep
    fill_in "Cidade", with: @atleta.cidade
    fill_in "Codigo Uci", with: @atleta.codigo_uci
    fill_in "Complemento", with: @atleta.complemento
    fill_in "Cpf", with: @atleta.cpf
    fill_in "Data Nascimento", with: @atleta.data_nascimento
    fill_in "Email", with: @atleta.email
    fill_in "Licenca Cbc", with: @atleta.licenca_cbc
    fill_in "Logradouro", with: @atleta.logradouro
    fill_in "Nacionalidade", with: @atleta.nacionalidade
    fill_in "Naturalidade", with: @atleta.naturalidade
    fill_in "Nome", with: @atleta.nome
    fill_in "Nome Mae", with: @atleta.nome_mae
    fill_in "Nome Pai", with: @atleta.nome_pai
    fill_in "Numero", with: @atleta.numero
    fill_in "Passaporte", with: @atleta.passaporte
    fill_in "Rg", with: @atleta.rg
    fill_in "Sexo", with: @atleta.sexo
    fill_in "Telefone Celular", with: @atleta.telefone_celular
    fill_in "Telefone Residencial", with: @atleta.telefone_residencial
    fill_in "Tipo Sanguineo", with: @atleta.tipo_sanguineo_id
    fill_in "Uf", with: @atleta.uf
    fill_in "Validade Passaporte", with: @atleta.validade_passaporte
    click_on "Create Atleta"

    assert_text "Atleta was successfully created"
    click_on "Back"
  end

  test "updating a Atleta" do
    visit atletas_url
    click_on "Edit", match: :first

    fill_in "Bairro", with: @atleta.bairro
    fill_in "Cep", with: @atleta.cep
    fill_in "Cidade", with: @atleta.cidade
    fill_in "Codigo Uci", with: @atleta.codigo_uci
    fill_in "Complemento", with: @atleta.complemento
    fill_in "Cpf", with: @atleta.cpf
    fill_in "Data Nascimento", with: @atleta.data_nascimento
    fill_in "Email", with: @atleta.email
    fill_in "Licenca Cbc", with: @atleta.licenca_cbc
    fill_in "Logradouro", with: @atleta.logradouro
    fill_in "Nacionalidade", with: @atleta.nacionalidade
    fill_in "Naturalidade", with: @atleta.naturalidade
    fill_in "Nome", with: @atleta.nome
    fill_in "Nome Mae", with: @atleta.nome_mae
    fill_in "Nome Pai", with: @atleta.nome_pai
    fill_in "Numero", with: @atleta.numero
    fill_in "Passaporte", with: @atleta.passaporte
    fill_in "Rg", with: @atleta.rg
    fill_in "Sexo", with: @atleta.sexo
    fill_in "Telefone Celular", with: @atleta.telefone_celular
    fill_in "Telefone Residencial", with: @atleta.telefone_residencial
    fill_in "Tipo Sanguineo", with: @atleta.tipo_sanguineo_id
    fill_in "Uf", with: @atleta.uf
    fill_in "Validade Passaporte", with: @atleta.validade_passaporte
    click_on "Update Atleta"

    assert_text "Atleta was successfully updated"
    click_on "Back"
  end

  test "destroying a Atleta" do
    visit atletas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Atleta was successfully destroyed"
  end
end
