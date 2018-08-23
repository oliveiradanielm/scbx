class CreateCategorias < ActiveRecord::Migration[5.2]
  def change
    create_table :categorias do |t|
      t.string :descricao
      t.integer :idade_minima
      t.integer :idade_maxima
      t.boolean :livre
      t.references :tipo_categoria, foreign_key: true

      t.timestamps
    end
  end
end
