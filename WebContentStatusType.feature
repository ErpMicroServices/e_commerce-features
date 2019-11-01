@e_commerce_database
Feature: web content status type
    As a Admin of e-commerce data
    I want to create, read, update and delete web content status type
    So that I can allow user customization of an e-commerce site.

    Scenario: I can create a web content status type
        Given I have provided a web content status type called "color"
        When I save the web content status type
        Then the web content status type is in the database

    Scenario: Duplicate web content status type get an error message
        Given a web content status type exists called "color"
        And I have provided a web content status type called "color"
        When I save the web content status type
        Then I get an error message

    Scenario: A web content status type list can be produced
        Given a web content status type exists called "color"
        And a web content status type exists called "list size"
        And a web content status type exists called "results per page"
        When I retrieve a list of web content status types
        Then the web content status type list contains "color"
        And the web content status type list contains "list size"
        And the web content status type list contains "results per page"

    Scenario: A web content status type can be updated
        Given a web content status type exists called "color"
        When I update the web content status type to "colour",
        Then the web content status type value in the database is "colour"

    Scenario: An error is returned when updating a web content status type to an existing web content status type
        Given a web content status type exists called "color"
        And a web content status type exists called "results per page"
        When I update the web content status type to "color",
        Then I get an error message

    Scenario: A web content status type can be deleted
      Given a web content status type exists called "color"
      When I delete a web content status type
      Then the web content status type called "color" does not exist
