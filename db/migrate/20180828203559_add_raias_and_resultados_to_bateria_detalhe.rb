class AddRaiasAndResultadosToBateriaDetalhe < ActiveRecord::Migration[5.2]
  def change
    add_column :bateria_detalhes, :raia_1, :integer
    add_column :bateria_detalhes, :raia_2, :integer
    add_column :bateria_detalhes, :raia_3, :integer
    add_column :bateria_detalhes, :resultado_1, :integer
    add_column :bateria_detalhes, :resultado_2, :string
    add_column :bateria_detalhes, :resultado_3, :integer
    add_column :bateria_detalhes, :resultado_geral, :integer
    remove_column :bateria_detalhes, :raia
    remove_column :bateria_detalhes, :resultado
  end
end
