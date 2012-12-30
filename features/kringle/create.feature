Feature: Create a Kringle
  In order to easily manage a Kris Kringle,
  As a visitor
  I want to be able to create a Kringle

  Background:
    Given I am not logged in
    Given There is no user with my email address

  Scenario: Visitor creates a Kringle with another person
    When I visit the homepage
    And I enter my email
    And a password
    And Another persons email
    Then I should see a successful sign up message
    And I should see the kringle management page


