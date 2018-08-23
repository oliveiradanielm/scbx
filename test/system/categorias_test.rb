require "application_system_test_case"

class CategoriasTest < ApplicationSystemTestCase
  setup do
    @categoria = categorias(:one)
  end

  test "visiting the index" do
    visit categorias_url
    assert_selector "h1", text: "Categorias"
  end

  test "creating a Categoria" do
    visit categorias_url
    click_on "New Categoria"

    fill_in "Descricao", with: @categoria.descricao
    fill_in "Idade Maxima", with: @categoria.idade_maxima
    fill_in "Idade Minima", with: @categoria.idade_minima
    fill_in "Livre", with: @categoria.livre
    fill_in "Tipo Categoria", with: @categoria.tipo_categoria_id
    click_on "Create Categoria"

    assert_text "Categoria was successfully created"
    click_on "Back"
  end

  test "updating a Categoria" do
    visit categorias_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @categoria.descricao
    fill_in "Idade Maxima", with: @categoria.idade_maxima
    fill_in "Idade Minima", with: @categoria.idade_minima
    fill_in "Livre", with: @categoria.livre
    fill_in "Tipo Categoria", with: @categoria.tipo_categoria_id
    click_on "Update Categoria"

    assert_text "Categoria was successfully updated"
    click_on "Back"
  end

  test "destroying a Categoria" do
    visit categorias_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Categoria was successfully destroyed"
  end
end
