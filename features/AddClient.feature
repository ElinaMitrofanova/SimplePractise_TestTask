Feature: Add a new Client

  Scenario: User adds a new client and verifies their presence on the Clients grid
    Given the user is logged in to SimplePractice
    When the user adds a new client
      | Parameter   | Value  |
      | First Name  | Test   |
      | Last Name   | User   |
      | Client Type | Minor  |
    Then the user verifies that the new client appears on the Clients grid
      | Parameter    | Value                     |
      | Full Name    | Test User                 |
      | Client type  | Minor                     |
      | RelationShip | Clinician: Test Automation|
