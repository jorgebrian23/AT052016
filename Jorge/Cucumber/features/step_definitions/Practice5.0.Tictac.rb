
Given(/^a board like this:$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  #pending # Write code here that turns the phrase above into concrete actions
  @board = table.raw
end

When(/^player (\w+) plays in row (\d+), column (\d+)$/) do |player,row, col|
  #puts @board
  #pending # Write code here that turns the phrase above into concrete actions
  player=player.to_s
  row, col = row.to_i, col.to_i
  if(player=='x')
  
  @board[row][col] = 'x'
	
	elsif (player=='y')
		@board[row][col] = '0'
	end
		
 

end
#When(/^player y plays in row (\d+), column (\d+)$/) do |row, col|
  #puts @board
  #pending # Write code here that turns the phrase above into concrete actions
#  row, col = row.to_i, col.to_i
#  @board[row][col] = '0'

#end


Then(/^the board should look like this:$/) do |expected_table|
	expected_table.diff!(@board)

  # table is a Cucumber::Core::Ast::DataTable
  #pending # Write code here that turns the phrase above into concrete actions
end