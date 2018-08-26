require "application_system_test_case"

class InscricoesTest < ApplicationSystemTestCase
  setup do
    @inscricao = inscricoes(:one)
  end

  test "visiting the index" do
    visit inscricoes_url
    assert_selector "h1", text: "Inscricoes"
  end

  test "creating a Inscricao" do
    visit inscricoes_url
    click_on "New Inscricao"

    fill_in "Atleta", with: @inscricao.atleta_id
    fill_in "Categoria", with: @inscricao.categoria_id
    fill_in "Confirmado", with: @inscricao.confirmado
    fill_in "Etapa", with: @inscricao.etapa_id
    click_on "Create Inscricao"

    assert_text "Inscricao was successfully created"
    click_on "Back"
  end

  test "updating a Inscricao" do
    visit inscricoes_url
    click_on "Edit", match: :first

    fill_in "Atleta", with: @inscricao.atleta_id
    fill_in "Categoria", with: @inscricao.categoria_id
    fill_in "Confirmado", with: @inscricao.confirmado
    fill_in "Etapa", with: @inscricao.etapa_id
    click_on "Update Inscricao"

    assert_text "Inscricao was successfully updated"
    click_on "Back"
  end

  test "destroying a Inscricao" do
    visit inscricoes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inscricao was successfully destroyed"
  end
end
