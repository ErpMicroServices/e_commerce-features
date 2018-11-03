@database @admin-service @admin-ui
Feature: web content type
    As a Admin of e-commerce data
    I want to create, read, update and delete web content type
    So that I can allow user customization of an e-commerce site.

    Scenario: I can create a web content type
        Given I have provided a web content type called "color"
        When I save the web content type
        Then the web content type is in the database

    Scenario: Duplicate web content type get an error message
        Given a web content type exists called "color"
        And I have provided a web content type called "color"
        When I save the web content type
        Then I get an error message

    Scenario: A web content type list can be produced
        Given a web content type exists called "color"
        And a web content type exists called "list size"
        And a web content type exists called "results per page"
        When I retrieve a list of web content types
        Then the web content type list contains "color"
        And the web content type list contains "list size"
        And the web content type list contains "results per page"

    Scenario: A web content type can be updated
        Given a web content type exists called "color"
        When I update the web content type to "colour",
        Then the web content type value in the database is "colour"

    Scenario: An error is returned when updating a web content type to an existing web content type
        Given a web content type exists called "color"
        And a web content type exists called "results per page"
        When I update the web content type to "color",
        Then I get an error message

    Scenario: A web content type can be deleted
      Given a web content type exists called "color"
      When I delete a web content type
      Then the web content type called "color" does not exist
