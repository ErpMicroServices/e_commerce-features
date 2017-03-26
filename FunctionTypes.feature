@database @admin-service @admin-ui
Feature: Function Types
    As a Admin of e-commerce data
    I want to create, read, update and delete function types
    So that I can allow user customization of an e-commerce site.

    Scenario: I can create a function type
        Given I have provided a function type called "color"
        When I save the function type
        Then the function type is in the database

    Scenario: Duplicate function types get an error message
        Given a function type exists called "color"
        And I have provided a function type called "color"
        When I save the function type
        Then I get an error message about duplicate function types

    Scenario: A function list can be produced
        Given a function type exists called "color"
        And a function type exists called "list size"
        And a function type exists called "results per page"
        When I retrieve a list of functions
        Then the function list contains "color"
        And the function list contains "list size"
        And the function list contains "results per page"

    Scenario: A function can be updated
        Given a function type exists called "color"
        When I update the function to "colour",
        Then the function value in the database is "colour"

    Scenario: An error is returned when updating a function to an existing function
        Given a function type exists called "color"
        And a function type exists called "results per page"
        When I update the function to "color",
        Then I get an error message

    Scenario: A function type can be deleted
      Given a function type exists called "color"
      When I delete a function type
      Then the function type called "results per page" does not exist
