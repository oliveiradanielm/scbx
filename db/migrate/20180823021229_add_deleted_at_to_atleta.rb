class AddDeletedAtToAtleta < ActiveRecord::Migration[5.2]
  def change
    add_column :atletas, :deleted_at, :datetime
  end
end
