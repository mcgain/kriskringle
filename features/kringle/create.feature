Feature: Create a Kringle
  In order to easily manage a Kris Kringle,
  I want to be able to create a Kringle

  Background:
    Given I am not logged in
    Given There is no user with my email address

  Scenario: Visitor creates a Kringle with another person
    When I visit the homepage
    And I enter my email
    And a password
    And I enter some participants
    And submit the page
    Then I should see the kringle management page

  Scenario: I logged in and create a kringle
    Given I am logged in
    When I visit the homepage
    And I enter some participants
    And submit the page
    Then I should see the kringle management page
