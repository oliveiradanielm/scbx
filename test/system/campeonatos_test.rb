require "application_system_test_case"

class CampeonatosTest < ApplicationSystemTestCase
  setup do
    @campeonato = campeonatos(:one)
  end

  test "visiting the index" do
    visit campeonatos_url
    assert_selector "h1", text: "Campeonatos"
  end

  test "creating a Campeonato" do
    visit campeonatos_url
    click_on "New Campeonato"

    fill_in "Descricao", with: @campeonato.descricao
    fill_in "Qtd Etapa", with: @campeonato.qtd_etapa
    fill_in "Titulo", with: @campeonato.titulo
    click_on "Create Campeonato"

    assert_text "Campeonato was successfully created"
    click_on "Back"
  end

  test "updating a Campeonato" do
    visit campeonatos_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @campeonato.descricao
    fill_in "Qtd Etapa", with: @campeonato.qtd_etapa
    fill_in "Titulo", with: @campeonato.titulo
    click_on "Update Campeonato"

    assert_text "Campeonato was successfully updated"
    click_on "Back"
  end

  test "destroying a Campeonato" do
    visit campeonatos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Campeonato was successfully destroyed"
  end
end
