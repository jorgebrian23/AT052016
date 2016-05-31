Feature: Daily Activities

Background: Go to my pc
	Given I open my notebook
	When I push in the button of on
	Then My notebook start

Scenario: Go to listen music

	Given I click in windows media player 
	When I click in play 
	Then the music is on

Scenario: Go to word in my pc
	Given these homewords

	| Name         | Status |
	| Fundamentals | Pending |
	| PROG101      | In progress |
	| BDT          | Done |

	When i Done my homeword of PROG101 
		And i Done my homeword of Fundamentals
	Then my status of my homewords should look like this

	| Name         | Status |
	| Fundamentals | Done |
	| PROG101      | Done |
	| BDT          | Done |