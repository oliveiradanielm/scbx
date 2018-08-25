class CreateTipoSanguineos < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_sanguineos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
