require 'rails_helper'

RSpec.describe "cars/new", type: :view do
  before(:each) do
    assign(:car, Car.new(
      :user => nil,
      :brand => "",
      :model => ""
    ))
  end

  it "renders new car form" do
    render

    assert_select "form[action=?][method=?]", cars_path, "post" do

      assert_select "input[name=?]", "car[user_id]"

      assert_select "input[name=?]", "car[brand]"

      assert_select "input[name=?]", "car[model]"
    end
  end
end
