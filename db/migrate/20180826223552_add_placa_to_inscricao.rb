class AddPlacaToInscricao < ActiveRecord::Migration[5.2]
  def change
    add_column :inscricoes, :placa, :string
    add_column :inscricoes, :deleted_at, :datetime
  end
end
