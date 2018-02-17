@user-service
Feature: Logging in
    As a registered user of Enterprise Kanban
    I want to login
    So that I can use the system

    Background:
        Given a user registered with username = "chester@tester.com", password = "chestertester"

    Scenario: I can login
        Given I have provided my username as "chester@tester.com"
        And I have provided my password as "chestertester"
        When I login
        Then I will be logged in

    Scenario: I am required to provide a username
        Given I have not provided a username
        And I have provided my password as "chestertester"
        When I login
        Then I will get an error indicating a username must be provided

    Scenario: I am required to provide a password
        Given I have provided my username as "chester@tester.com"
        And I have not provided a password
        When I login
        Then I will get an error indicating a password must be provided
