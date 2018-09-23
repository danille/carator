class ChangeCarProductionYearType < ActiveRecord::Migration[5.1]
  def change
    change_column :cars, :production_year, 'integer USING EXTRACT(YEAR(production_year) AS integer)'

  end
end
