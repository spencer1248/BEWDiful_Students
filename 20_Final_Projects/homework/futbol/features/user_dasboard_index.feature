Feature: Show user/fan's pinboards
  As a fan/user 
  I want my dashboard to display all my pinboards
  So I can see pinboards i have created
  
  @dashboard_index
  @javascript
  @pause
  Scenario: As a fan/user
    Given I a fan/user
    When  I visit my "dashboard_index" page
    Then  I should see all my created "Epl-Pinboard"
    
