class Car < ApplicationRecord
  before_save :capitalize_manufacturer_name
  belongs_to :user

  private

  def capitalize_manufacturer_name
    manufacturer.capitalize!
  end

end
