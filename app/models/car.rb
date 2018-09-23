class Car < ApplicationRecord
  before_save :capitalize_manufacturer_name
  belongs_to :user

  def capitalize_manufacturer_name
    manufacturer.titleize!
  end

end
