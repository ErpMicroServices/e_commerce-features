Feature: Logging Out
    As a registered user of Enterprise Kanban
    I want to logout
    So that I can stop using the system

    Background:
        Given a user registered with username = "chester@tester.com", password = "chestertester"

    Scenario: I can logout
      When I logout
      Then I am logged out
