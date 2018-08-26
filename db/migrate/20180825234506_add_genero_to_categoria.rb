class AddGeneroToCategoria < ActiveRecord::Migration[5.2]
  def change
    add_column :categorias, :genero, :integer
  end
end
