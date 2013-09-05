Feature: Add a player to pinboard
  As a fan/user
  I want to add a player to my pinboard

  Background: I am a fan
    Given I am a fan/user
 @add_player
 Scenario: Add player to specified pinboard
    Given I have pinboard
    And   There is a player
    When  I add a player to pinboard
    Then  My pinboard should include player
 
      
        
