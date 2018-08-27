require "application_system_test_case"

class CampeonatoDetalhesTest < ApplicationSystemTestCase
  setup do
    @campeonato_detalhe = campeonato_detalhes(:one)
  end

  test "visiting the index" do
    visit campeonato_detalhes_url
    assert_selector "h1", text: "Campeonato Detalhes"
  end

  test "creating a Campeonato detalhe" do
    visit campeonato_detalhes_url
    click_on "New Campeonato Detalhe"

    fill_in "Campeonato", with: @campeonato_detalhe.campeonato_id
    fill_in "Categoria", with: @campeonato_detalhe.categoria_id
    fill_in "Etapa", with: @campeonato_detalhe.etapa_id
    click_on "Create Campeonato detalhe"

    assert_text "Campeonato detalhe was successfully created"
    click_on "Back"
  end

  test "updating a Campeonato detalhe" do
    visit campeonato_detalhes_url
    click_on "Edit", match: :first

    fill_in "Campeonato", with: @campeonato_detalhe.campeonato_id
    fill_in "Categoria", with: @campeonato_detalhe.categoria_id
    fill_in "Etapa", with: @campeonato_detalhe.etapa_id
    click_on "Update Campeonato detalhe"

    assert_text "Campeonato detalhe was successfully updated"
    click_on "Back"
  end

  test "destroying a Campeonato detalhe" do
    visit campeonato_detalhes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Campeonato detalhe was successfully destroyed"
  end
end
