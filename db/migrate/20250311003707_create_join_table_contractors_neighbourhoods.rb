class CreateJoinTableContractorsNeighbourhoods < ActiveRecord::Migration[7.2]
  def change
    create_join_table :contractors, :neighbourhoods do |t|
      t.index [:contractor_id, :neighbourhood_id]
      t.index [:neighbourhood_id, :contractor_id]
    end
  end
end
