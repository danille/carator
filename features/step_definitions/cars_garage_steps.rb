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
  fill_in 'car_custom_name', with: "Test car custom name"
  select('2016', from: 'car_production_year')
  select('Chevrolet', from: 'car_manufacturer')
  select('Express', from: 'car_model')
  select('LS 2500 3dr Van (4.8L 8cyl 6A)', from: 'car_trim')

  click_button "Add new car"
end

Then("I should see new car in my cars listing") do
  expect(page).to have_content("Volkswagen Golfwagen LD")
end

When("I click on the car link") do
  page.first('.car-link').click
end

Then("I should see details of the car") do
  expect(page).to have_content("Marcedes Benz")
  expect(page).to have_content("S300")
end

