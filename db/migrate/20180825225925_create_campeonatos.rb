class CreateCampeonatos < ActiveRecord::Migration[5.2]
  def change
    create_table :campeonatos do |t|
      t.string :titulo
      t.string :descricao
      t.integer :qtd_etapa

      t.timestamps
    end
  end
end
