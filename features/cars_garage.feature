Feature: Cars Garage
  In order to keep track of my cars
  As a user
  I should be able to keep an garage of my cars

  Background:
    Given I am a registered user
    And I am logged in
    And I have populated my garage with several cars

  Scenario: Listing cars in my garage
    When I visit the homepage
    Then I should see the list of my cars

#  @javascript
#  Scenario: Adding new car to the garage
#    Given I visit the my cars listing page
#    When I click on Add new car link
#    And I submit filled in new car form
#    Then I should see new car in my cars listing

  Scenario: Viewing details of the car
    Given I visit the my cars listing page
    When I click on the car link
    Then I should see details of the car

  Scenario: Removing car from the garage
    Given I visit the my cars listing page
    And I click on the car link
    When I click on Remove this car link
    And Confirm Remove car operation
    Then Car should be removed from the garage