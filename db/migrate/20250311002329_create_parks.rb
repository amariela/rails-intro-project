class CreateParks < ActiveRecord::Migration[7.2]
  def change
    create_table :parks do |t|
      t.string :name

      t.timestamps
    end
  end
end
