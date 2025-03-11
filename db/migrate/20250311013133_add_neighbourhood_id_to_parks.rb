class AddNeighbourhoodIdToParks < ActiveRecord::Migration[7.2]
  def change
    add_column :parks, :neighbourhood_id, :integer
    add_index :parks, :neighbourhood_id
  end
end
