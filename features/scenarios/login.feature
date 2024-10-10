Feature: Login Functionality
    @pertemuan-1
    Scenario: As a user, i want to able to login to the application with my credentials
    Given I am on the login page
    When I enter my username and password
    And I click the login button
    Then I should be logged in to the application
