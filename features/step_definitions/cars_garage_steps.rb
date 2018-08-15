Given("I have populated my garage with several cars") do
  FactoryBot.create(:car,
                    user: @registered_user,
                    brand: "Mercedes Benz",
                    model: "S300")

  FactoryBot.create(:car,
                    user: @registered_user,
                    brand: "Mazda",
                    model: "6")

end

Then("I should see the list of my cars") do
  expect(page).to have_content("Mazda")
  expect(page).to have_content("Mercedes Benz")
end
