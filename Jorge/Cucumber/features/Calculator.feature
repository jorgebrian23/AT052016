Feature: Calculator operations
Scenario: Sum

	Given I have the numbers
	|1|2|3|
	When I select the option Sum
	Then I should see result = 6
