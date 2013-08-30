Feature: Add Pinboard
  In order to Pin Players to my pinboard
  As a fan 
  I want to create a new pinboard
  
  Background: As a Fan/user
    Given I am a fan/user 

  Scenario: Add new pinboard
    Given I have no pinboards
    When  I add a new pinboard "EPL"
    And   I save it
    Then  I should see a pinboard "EPL"
