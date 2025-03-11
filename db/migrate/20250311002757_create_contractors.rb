class CreateContractors < ActiveRecord::Migration[7.2]
  def change
    create_table :contractors do |t|
      t.string :full_name

      t.timestamps
    end
  end
end
