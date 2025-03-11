class CreateJoinTableBusinessesContractors < ActiveRecord::Migration[7.2]
  def change
    create_join_table :businesses, :contractors do |t|
      t.index [:business_id, :contractor_id]
      t.index [:contractor_id, :business_id]
    end
  end
end
