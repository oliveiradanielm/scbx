class AddClassificadoToBateriaDetalhe < ActiveRecord::Migration[5.2]
  def change
    add_column :bateria_detalhes, :classificado, :boolean
  end
end
