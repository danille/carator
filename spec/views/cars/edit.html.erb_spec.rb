require 'rails_helper'

RSpec.describe "cars/edit", type: :view do
  before(:each) do
    @car = assign(:car, Car.create!(
      :user => nil,
      :brand => "",
      :model => ""
    ))
  end

  it "renders the edit car form" do
    render

    assert_select "form[action=?][method=?]", car_path(@car), "post" do

      assert_select "input[name=?]", "car[user_id]"

      assert_select "input[name=?]", "car[brand]"

      assert_select "input[name=?]", "car[model]"
    end
  end
end
