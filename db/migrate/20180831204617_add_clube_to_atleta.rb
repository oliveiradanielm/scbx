class AddClubeToAtleta < ActiveRecord::Migration[5.2]
  def change
    add_column :atletas, :clube, :string
  end
end
