Feature: Cars Garage
  In order to keep track of my cars
  As a user
  I should be able to keep an garage of my cars

  Background:
    Given I am a registered user
    And I am logged in

  Scenario: Listing cars in my garage
    Given I have populated my garage with several cars
    When I visit the homepage
    Then I should see the list of my cars

  Scenario: Adding new car to the garage
    Given I visit the my cars listing page
    When I click on Add new car link
    And I submit filled in new car form
    Then I should see new car in my cars listing

