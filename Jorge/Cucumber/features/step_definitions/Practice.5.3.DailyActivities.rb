Given(/^I open my notebook$/) do
  #pending # Write code here that turns the phrase above into concrete actions
end

When(/^I push in the button of on$/) do
  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^My notebook start$/) do
  #pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I click in windows media player$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click in play$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the music is on$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^these homewords$/) do |table|
  @board=table.raw
  # table is a Cucumber::Core::Ast::DataTable
  #pending # Write code here that turns the phrase above into concrete actions
end

When(/^i (\w+) my homeword of (\w+)$/) do |status,homeword|
  if homeword=='PROG101'
    @board[2][1] = status.to_s
  elsif homeword=='Fundamentals'
    @board[1][1]=status.to_s
  end
  #puts @board


  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^my status of my homewords should look like this$/) do |expected_table|
  # table is a Cucumber::Core::Ast::DataTable
  #pending # Write code here that turns the phrase above into concrete actions
  expected_table.diff!(@board)
end