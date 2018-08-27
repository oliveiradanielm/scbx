class CreateCampeonatoDetalhes < ActiveRecord::Migration[5.2]
  def change
    create_table :campeonato_detalhes do |t|
      t.references :categoria, foreign_key: true
      t.references :etapa, foreign_key: true
      t.references :campeonato, foreign_key: true

      t.timestamps
    end
  end
end
