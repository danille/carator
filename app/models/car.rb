class Car < ApplicationRecord
  before_save :titleize_manufacturer_name
  belongs_to :user

  private

  def titleize_manufacturer_name
    self.manufacturer = manufacturer.titleize
  end

end
