Given("I visit the homepage") do
  visit root_path
end

When("I fill in the sign up form") do
  click_link "Sign up"

  fill_in "user_email", with: "tester@testdomain.com"
  fill_in "user_password", with: "pa$$w0rd"
  fill_in "user_password_confirmation", with: "pa$$w0rd"
  click_button "Sign up"
end

When("I confirm the email") do
  open_email "tester@testdomain.com"

  visit_in_email "Confirm my account"
end

Then("should see that my account is confirmed") do
  message = "Your email address has been successfully confirmed"

  expect(page).to have_content(message)
end

Given("I am a registered user") do
  @registered_user = FactoryBot.create(:user, email: "tester@testdomain.com", password: "pa$$w0rd")
end

When("I fill in a log in form") do
  fill_in "user_email", with: "tester@testdomain.com"
  fill_in "user_password", with: "pa$$w0rd"
  click_button "Log in"
end

Then("I should be logged in") do
  expect(page).to have_content("Signed in")
end

Given("I am logged in") do
  visit root_path

  fill_in "user_email", with: "tester@testdomain.com"
  fill_in "user_password", with: "pa$$w0rd"
  click_button "Log in"
end

When("I click log out button") do
  click_link "Log out"
end

Then("I should be redirected to the log in page") do
  expect(page).to have_content("Log in")
end
