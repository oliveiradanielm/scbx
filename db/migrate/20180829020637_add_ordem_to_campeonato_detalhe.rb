class AddOrdemToCampeonatoDetalhe < ActiveRecord::Migration[5.2]
  def change
    add_column :campeonato_detalhes, :ordem, :integer
  end
end
