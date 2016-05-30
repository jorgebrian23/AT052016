Feature: test
Scenario: One
Given I have $100 in my Account 
When I request $20 
Then $20 should be dispensed 
