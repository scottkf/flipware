Feature: A person can have parents and children
  As a person
  I need to have a parent or a child
  In order to see who is accountable, if necessary
  
  @javascript
  Scenario: Show me my parents and children
    Given I have a person named "Apple Villian"
    And the person has a parent named "Virgina Leftis"
    And the person has a child named "Orange Villian"
		When I go to the people page
    And I follow "Apple Villian" within "#people"
		Then I should see "Apple Villian" within "#person"
    And I should see "Virgina Leftis" within "#parents"
    And I should see "Orange Villian" within "#children"

