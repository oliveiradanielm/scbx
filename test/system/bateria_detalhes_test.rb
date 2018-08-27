require "application_system_test_case"

class BateriaDetalhesTest < ApplicationSystemTestCase
  setup do
    @bateria_detalhe = bateria_detalhes(:one)
  end

  test "visiting the index" do
    visit bateria_detalhes_url
    assert_selector "h1", text: "Bateria Detalhes"
  end

  test "creating a Bateria detalhe" do
    visit bateria_detalhes_url
    click_on "New Bateria Detalhe"

    fill_in "Bateria", with: @bateria_detalhe.bateria_id
    fill_in "Inscricao", with: @bateria_detalhe.inscricao_id
    fill_in "Raia", with: @bateria_detalhe.raia
    fill_in "Resultado", with: @bateria_detalhe.resultado
    click_on "Create Bateria detalhe"

    assert_text "Bateria detalhe was successfully created"
    click_on "Back"
  end

  test "updating a Bateria detalhe" do
    visit bateria_detalhes_url
    click_on "Edit", match: :first

    fill_in "Bateria", with: @bateria_detalhe.bateria_id
    fill_in "Inscricao", with: @bateria_detalhe.inscricao_id
    fill_in "Raia", with: @bateria_detalhe.raia
    fill_in "Resultado", with: @bateria_detalhe.resultado
    click_on "Update Bateria detalhe"

    assert_text "Bateria detalhe was successfully updated"
    click_on "Back"
  end

  test "destroying a Bateria detalhe" do
    visit bateria_detalhes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bateria detalhe was successfully destroyed"
  end
end
