class AddNeighbourhoodIdToBusiness < ActiveRecord::Migration[7.2]
  def change
    add_column :businesses, :neighbourhood_id, :integer
    add_index :businesses, :neighbourhood_id
  end
end
