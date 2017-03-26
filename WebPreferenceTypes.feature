@database @admin-service @admin-ui
Feature: Web Preference Types
    As a Admin of e-commerce data
    I want to create, read, update and delete web preference types
    So that I can allow user customization of an e-commerce site.

    Scenario: I can create a web preference type
        Given I have provided a web preference type called "color"
        When I save the web preference type
        Then the web preference type is in the database

    Scenario: Duplicate web preference types get an error message
        Given a web preference type exists called "color"
        And I have provided a web preference type called "color"
        When I save the web preference type
        Then I get an error message

    Scenario: A web preference list can be produced
        Given a web preference type exists called "color"
        And a web preference type exists called "list size"
        And a web preference type exists called "results per page"
        When I retrieve a list of web preferences
        Then the web preference list contains "color"
        And the web preference list contains "list size"
        And the web preference list contains "results per page"

    Scenario: A web preference can be updated
        Given a web preference type exists called "color"
        When I update the web preference to "colour",
        Then the web preference value in the database is "colour"

    Scenario: An error is returned when updating a web preference to an existing web preference
        Given a web preference type exists called "color"
        And a web preference type exists called "results per page"
        When I update the web preference to "color",
        Then I get an error message

    Scenario: A web preference type can be deleted
      Given a web preference type exists called "color"
      When I delete a web preference type
      Then the web preference type called "color" does not exist
