class RenameCarBrandColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :cars, :brand, :manufacturer
  end
end
