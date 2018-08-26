class CreateEtapas < ActiveRecord::Migration[5.2]
  def change
    create_table :etapas do |t|
      t.string :descricao
      t.string :data
      t.string :cidade
      t.string :uf
      t.references :campeonato, foreign_key: true

      t.timestamps
    end
  end
end
