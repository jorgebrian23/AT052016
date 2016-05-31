Feature: Tic-Tac-Toe
Scenario:Game1
Given a board like this:
|    | 1 | 2 | 3 |
| 1 |   |   |   |
| 2 |   |   |   |
| 3 |   |   |   |
When player x plays in row 2, column 1
	And player y plays in row 2, column 2
	And player x plays in row 1, column 1
	And player y plays in row 1, column 2
	And player x plays in row 3, column 1
Then the board should look like this:
|    | 1 | 2 | 3 |
| 1 | x | 0 |   |
| 2 | x | 0 |   |
| 3 | x |  |   |
