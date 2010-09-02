Feature: A person can have parents and children
  As a person
  I need to have a parent or a child
  In order to see who is accountable, if necessary
  
  
  @javascript
  Scenario: Show me my parents and children
    Given I am on the people page
    And have a person named "Apple Villian"
    And the person has a parent named "Virgina Leftis"
    And the person has a child named "Orange Villian"
    When I select "Apple Villian" from "People"
    Then I should see "Virgina Leftis" within "#parents"
    And I should see "Orange Villian" within "#children"


  # @javascript
  # Scenario: I can have a parent
  #   Given I am on the person page
  #   And I select "Apple Villian" from "People"
  #   When I follow "Add a Parent"
  #   And I add a parent
  #   And their name is "Roman Mcguire"
  #   Then I should have a parent named "Roman Mcguire"
  #   
  # 
  # Scenario: I can have a child
