Feature: Add a player to pinboard
  As a fan/user
  I want to add a player to my pinboard

  Background: I am a fan
    Given I am a fan/user

 Scenario: Add player to specified pinboard
    Given I have pinboard
    And   There is a player
    When  I add a player to pinboard
    Then  My pinboard should include player
  
  Scenario Outline: Add player to pinboard
    Given I have a <pinboard>  
    And   I have a player with <first_name> and <last_name>
    When  I add the player to the pinboard 
    Then  pinboard  should include player

      Examples:
      | pinboard  | first_name | last_name |
      | "defender"| "Michael"  | "Essien"  |  
