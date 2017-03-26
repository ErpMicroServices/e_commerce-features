@database @user-service 
Feature: Logging Out
    As a registered user of Enterprise Kanban
    I want to logout
    So that I can stop using the system

    Background:
        Given I have provided my username as "chester@tester.com"
        And I have provided my password as "chestertester"
        When I register
        Then I will be logged in

    Scenario: I can logout
      When I logout
      Then I am logged out
