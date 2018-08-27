require "application_system_test_case"

class TipoBateriasTest < ApplicationSystemTestCase
  setup do
    @tipo_bateria = tipo_baterias(:one)
  end

  test "visiting the index" do
    visit tipo_baterias_url
    assert_selector "h1", text: "Tipo Baterias"
  end

  test "creating a Tipo bateria" do
    visit tipo_baterias_url
    click_on "New Tipo Bateria"

    fill_in "Descricao", with: @tipo_bateria.descricao
    click_on "Create Tipo bateria"

    assert_text "Tipo bateria was successfully created"
    click_on "Back"
  end

  test "updating a Tipo bateria" do
    visit tipo_baterias_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @tipo_bateria.descricao
    click_on "Update Tipo bateria"

    assert_text "Tipo bateria was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo bateria" do
    visit tipo_baterias_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo bateria was successfully destroyed"
  end
end
