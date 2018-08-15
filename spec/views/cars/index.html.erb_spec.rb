require 'rails_helper'

RSpec.describe "cars/index", type: :view do
  before(:each) do
    assign(:cars, [
      Car.create!(
        :user => nil,
        :brand => "",
        :model => ""
      ),
      Car.create!(
        :user => nil,
        :brand => "",
        :model => ""
      )
    ])
  end

  it "renders a list of cars" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
