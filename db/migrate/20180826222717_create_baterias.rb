class CreateBaterias < ActiveRecord::Migration[5.2]
  def change
    create_table :baterias do |t|
      t.references :tipo_bateria, foreign_key: true
      t.integer :numero
      t.references :campeonato_detalhe, foreign_key: true
      t.text :complemento

      t.timestamps
    end
  end
end
