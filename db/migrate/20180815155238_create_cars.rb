class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.date :production_year

      t.timestamps
    end
  end
end
