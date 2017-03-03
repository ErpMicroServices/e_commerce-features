Feature: Logging in
    As a registered user of Enterprise Kanban
    I want to login
    So that I can use the system

    Background:
        Given I have provided my username as "chester@tester.com"
        And I have provided my password as "chestertester"
        When I register
        Then I will be logged in

    Scenario: I can login
        Given I have provided my username as "chester@tester.com"
        And I have provided my password as "chestertester"
        When I login
        Then I will be logged in

    Scenario: I am required to provide a username
        Given I have provided my username as ""
        And I have provided my password as "chestertester"
        When I login
        Then I will be given a message that says "The username is required"

    Scenario: I am required to provide a password
        Given I have provided my username as "chester@tester.com"
        And I have provided my password as ""
        When I login
        Then I will be given a message that says "The password is required"
