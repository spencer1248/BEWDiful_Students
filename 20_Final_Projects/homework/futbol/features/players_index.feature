Feature: List players on index page
  As a fan/user
  I want to view all the EPL players
  So I can add my favorite to my pinboard

  Scenario: View epl players
    Given  I am a logged in user
    When   I visit the players index page
    Then   I should see all players

