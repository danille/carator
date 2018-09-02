class AddTrimToCarModel < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :trim, :string
  end
end
