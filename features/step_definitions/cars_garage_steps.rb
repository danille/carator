Given("I have populated my garage with several cars") do
  FactoryBot.create(:car,
                    user: @registered_user,
                    custom_name: "Student",
                    manufacturer: "Mercedes Benz",
                    model: "S300")

  FactoryBot.create(:car,
                    custom_name: "Lector",
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
  sleep 2
  select('2016', from: 'car_production_year')
  select('Chevrolet', from: 'car_manufacturer')
  select('Express', from: 'car_model')
  select('LS 2500 3dr Van (4.8L 8cyl 6A)', from: 'car_trim')

  click_button "Add new car"
end

Then("I should see new car in my cars listing") do
  expect(page).to have_content("Chevrolet Express")
end

When("I click on the car link") do
  page.first('.car-link').click
end

Then("I should see details of the car") do
  expect(page).to have_content("Mercedes Benz")
  expect(page).to have_content("S300")
end

When("I click on Remove this car link") do
  click_link "Remove this car"
end

When("Confirm Remove car operation") do
  print page.driver
  page.driver.browser.switch_to.alert.accept
end

Then("Car should be removed from the garage") do
  expect(page).to_not have_content("Mercedes Benz")
end

