Feature: Withdraw Fixed Amount
The "Withdraw Cash" menu contains several fixed amounts to
speed up transactions for users.

Scenario: Withdraw fixed amount of $50
   Given I have $500 in my account
   When I choose to withdraw the fixed amount of $50
   Then I should receive $50 cash
   And the balance of my account should be $450

Scenario: Withdraw fixed amount of $100
    Given I have $500 in my account
    When I choose to withdraw the fixed amount of $100
    Then I should receive $100 cash
    And the balance of my account should be $400

Scenario: Withdraw fixed amount of $200
   Given I have $500 in my account
   When I choose to withdraw the fixed amount of $200
   Then I should receive $200 cash
   And the balance of my account should be $300

Scenario: Withdraw fixed amount of $300
    Given I have $500 in my account
    When I choose to withdraw the fixed amount of $300
    Then I should receive $100 cash
    And the balance of my account should be $200

Scenario: Withdraw fixed amount of $400
   Given I have $500 in my account
   When I choose to withdraw the fixed amount of $400
   Then I should receive $200 cash
   And the balance of my account should be $100