Feature: Swag Labs Login and Navigation   

Scenario: User can log in with valid credentials
        Given I am on the Swag Labs login page 
        When I log in with username "standard_user" and password "secret_sauce" 
        Then I should see the products page