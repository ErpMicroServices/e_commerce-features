@database @user-service 
Feature: User can register
    As a new user of the Enterprise Kanban
    I want to register as a user
    So that I can user the system

    Scenario: Register the user
        Given I have provided my username as "chester@tester.com"
        And I have provided my password as "chestertester"
        When I register
        Then I will be logged in

    Scenario: Registering a user requires the username to be provided
        Given I have provided my password as "chestertester"
        When I register
        Then I will be given a message that says "The username is required"

    Scenario: Registering a user requires the password to be provided
        Given I have provided my username as "chester@tester.com"
        When I register
        Then I will be given a message that says "The password is required"

    Scenario: Registering a user requires the username to be unique
        Given a user registered with username = "chester@tester.com", password = "chestertester"
        And I have provided my username as "chester@tester.com"
        And I have provided my password as "chester2tester2"
        When I register
        Then I will be given the message "You have already registered with that username"
