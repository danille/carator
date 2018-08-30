Given("I have populated my garage with several cars") do
  FactoryBot.create(:car,
                    user: @registered_user,
                    manufacturer: "Mercedes Benz",
                    model: "S300")

  FactoryBot.create(:car,
                    user: @registered_user,
                    manufacturer: "Mazda",
                    model: "6")

end

Then("I should see the list of my cars") do
  expect(page).to have_content("Mazda")
  expect(page).to have_content("Mercedes Benz")
end

Given("I visit the my cars listing page") do
  visit cars_path
end

When("I click on Add new car link") do
  click_link "Add new car"
end

When("I submit filled in new car form") do
  fill_in "car_manufacturer", with: "Volkswagen"
  fill_in "car_model", with: "Golfwagen LD"
  fill_in "car_production_date", with: "2017"

  click_button "Add new car"
end

Then("I should see new car in my cars listing") do
  expect(page).to have_content("Volkswagen Golfwagen LD")
end

