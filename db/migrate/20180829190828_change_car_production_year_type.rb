class ChangeCarProductionYearType < ActiveRecord::Migration[5.1]
  def change
    remove_column :cars, :production_year
    add_column :cars, :production_year, :integer
  end
end
