Feature: Edit a Kringle
  In order to correct mistakes and add detail,
  I want to be able to edit a Kringle

  Background:
    Given I am logged in
    And I have already created a kringle

  Scenario: I edit a kringle from the homepage
    When I visit the homepage
    And I click on the kringle
    Then I should see the kringle management page
