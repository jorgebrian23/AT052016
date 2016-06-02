
Given(/^I have the numbers$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  @board = table.raw
  #pending # Write code here that turns the phrase above into concrete actions
end

When(/^I select the option (\w+)$/) do |operation|
  #pending # Write code here that turns the phrase above into concrete actions
  case operation
  	when "Sum" then @suma=Calculator.add @board
  	when "Rest" then Calculator.substract @board
  end
end

Then(/^I should see result = (\d+)$/) do |expected_result|
  
  #pending # Write code here that turns the phrase above into concrete actions
  expect(@suma.to_i).to eq(expected_result.to_i)

end