class AddPontosToBateriaDetalhe < ActiveRecord::Migration[5.2]
  def change
    add_column :bateria_detalhes, :pontos, :integer
  end
end
