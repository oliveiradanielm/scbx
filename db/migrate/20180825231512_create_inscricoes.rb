class CreateInscricoes < ActiveRecord::Migration[5.2]
  def change
    create_table :inscricoes do |t|
      t.references :atleta, foreign_key: true
      t.references :categoria, foreign_key: true
      t.references :etapa, foreign_key: true
      t.boolean :confirmado

      t.timestamps
    end
  end
end
