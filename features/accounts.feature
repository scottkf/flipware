Feature: An account can contain many people and hold many transactions
  In order to figure out what the person is doing in our business
  As a business owner
  The account must contain relevant information about my customers

	@javascript
	Scenario: An account can contain many people, parents and children
		Given I am looking at a list of accounts
		When I select "Apple Villian" from "Accounts"
		Then I should see "Virgina Leftis" within "#parents"
		And I should see "Orange Villian" within "#children"
		And I should see "Transactions"
 		# a list of account information
 

