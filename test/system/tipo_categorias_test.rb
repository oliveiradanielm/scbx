require "application_system_test_case"

class TipoCategoriasTest < ApplicationSystemTestCase
  setup do
    @tipo_categoria = tipo_categorias(:one)
  end

  test "visiting the index" do
    visit tipo_categorias_url
    assert_selector "h1", text: "Tipo Categorias"
  end

  test "creating a Tipo categoria" do
    visit tipo_categorias_url
    click_on "New Tipo Categoria"

    fill_in "Descricao", with: @tipo_categoria.descricao
    click_on "Create Tipo categoria"

    assert_text "Tipo categoria was successfully created"
    click_on "Back"
  end

  test "updating a Tipo categoria" do
    visit tipo_categorias_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @tipo_categoria.descricao
    click_on "Update Tipo categoria"

    assert_text "Tipo categoria was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo categoria" do
    visit tipo_categorias_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo categoria was successfully destroyed"
  end
end
