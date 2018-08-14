Feature: Cars Garage
  In order to keep track of my cars
  As a user
  I should be able to keep an garage of my cars

  Scenario: Listing cars in my garage
    Given I have populated my garage with several cars
    When I visit homepage
    Then I should see the list of my cars
