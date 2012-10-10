Feature: When I use bmi
  As a user
  I want to be able to use the site easily

Scenario: Homepage Routing
  When I go to the home page
  Then I should see the text "Welcome to BMI"
  And I should see the image "loseweight_500.jpg"
