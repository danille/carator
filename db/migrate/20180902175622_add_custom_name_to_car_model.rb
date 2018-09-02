class AddCustomNameToCarModel < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :custom_name, :string
  end
end
