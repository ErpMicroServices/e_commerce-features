@e_commerce_database
Feature: web content role type
    As a Admin of e-commerce data
    I want to create, read, update and delete web content role type
    So that I can allow user customization of an e-commerce site.

    Scenario: I can create a web content role type
        Given I have provided a web content role type called "color"
        When I save the web content role type
        Then the web content role type is in the database

    Scenario: Duplicate web content role type get an error message
        Given a web content role type exists called "color"
        And I have provided a web content role type called "color"
        When I save the web content role type
        Then I get an error message

    Scenario: A web content role type list can be produced
        Given a web content role type exists called "color"
        And a web content role type exists called "list size"
        And a web content role type exists called "results per page"
        When I retrieve a list of web content role types
        Then the web content role type list contains "color"
        And the web content role type list contains "list size"
        And the web content role type list contains "results per page"

    Scenario: A web content role type can be updated
        Given a web content role type exists called "color"
        When I update the web content role type to "colour",
        Then the web content role type value in the database is "colour"

    Scenario: An error is returned when updating a web content role type to an existing web content role type
        Given a web content role type exists called "color"
        And a web content role type exists called "results per page"
        When I update the web content role type to "color",
        Then I get an error message

    Scenario: A web content role type can be deleted
      Given a web content role type exists called "color"
      When I delete a web content role type
      Then the web content role type called "color" does not exist
