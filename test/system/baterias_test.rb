require "application_system_test_case"

class BateriasTest < ApplicationSystemTestCase
  setup do
    @bateria = baterias(:one)
  end

  test "visiting the index" do
    visit baterias_url
    assert_selector "h1", text: "Baterias"
  end

  test "creating a Bateria" do
    visit baterias_url
    click_on "New Bateria"

    fill_in "Campeonato Detalhe", with: @bateria.campeonato_detalhe_id
    fill_in "Complemento", with: @bateria.complemento
    fill_in "Numero", with: @bateria.numero
    fill_in "Tipo Bateria", with: @bateria.tipo_bateria_id
    click_on "Create Bateria"

    assert_text "Bateria was successfully created"
    click_on "Back"
  end

  test "updating a Bateria" do
    visit baterias_url
    click_on "Edit", match: :first

    fill_in "Campeonato Detalhe", with: @bateria.campeonato_detalhe_id
    fill_in "Complemento", with: @bateria.complemento
    fill_in "Numero", with: @bateria.numero
    fill_in "Tipo Bateria", with: @bateria.tipo_bateria_id
    click_on "Update Bateria"

    assert_text "Bateria was successfully updated"
    click_on "Back"
  end

  test "destroying a Bateria" do
    visit baterias_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bateria was successfully destroyed"
  end
end
