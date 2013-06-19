Feature: Creating projects
  In order to have projects to ssign tickets to
  As a user
  I want to create them easily

  Scenario:
    Given I am on the homepage
    When I follow "New Project"
    And I fill in "Name" with "TextMate 2"
    And I press "Create Project"
    Then I should see "Project has been created"
    And I should be on the project page for "TextMate 2"
    And I should see the "TextMate 2 - Projects - Ticketee" title
