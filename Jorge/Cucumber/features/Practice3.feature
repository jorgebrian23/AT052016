Feature: Testing google main page

Scenario: Searching something
  Given I want to find cars
  	When I write cars in the google searcher
  	And I press search in google
  	Then The results appear

  Given Search excluding a ppt
  	When I write something use example.ppt
  	And I press search in google
  	Then Appear results in filetype ppt

  Given Search in a specific web
  	When I write something using the keyword site: like Macbook site:http://www.dictionary.com/
  	And I press search in google
  	Then Appear results this page

 