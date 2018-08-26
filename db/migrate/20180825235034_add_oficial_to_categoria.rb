class AddOficialToCategoria < ActiveRecord::Migration[5.2]
  def change
    add_column :categorias, :oficial, :boolean
  end
end
