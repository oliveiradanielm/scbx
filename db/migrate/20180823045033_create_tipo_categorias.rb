class CreateTipoCategorias < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_categorias do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
