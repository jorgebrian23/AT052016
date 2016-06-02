Feature: Test

Scenario Outline: login
	Given a username= <User>
	And a password= <Password>
	Then the result expect <Message>
	
Examples:
	| User | Password | Message|
	| jorge    | 123 | Welcome|      
	| brian    | 123 | Welcome |    
	| forero   | 123 | NotFound |

