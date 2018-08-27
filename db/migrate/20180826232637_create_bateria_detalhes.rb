class CreateBateriaDetalhes < ActiveRecord::Migration[5.2]
  def change
    create_table :bateria_detalhes do |t|
      t.references :bateria, foreign_key: true
      t.references :inscricao, foreign_key: true
      t.integer :raia
      t.integer :resultado

      t.timestamps
    end
  end
end
