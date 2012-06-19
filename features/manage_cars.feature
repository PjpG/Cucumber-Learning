Feature: Manage Cars
  In Order to make a list
  As an author
  I Want to create and manage cars
  
  Scenario: Cars List
    Given I have cars titled Audi, Ford
    When  I go to the list of cars
    Then I should see "Audi"
    And I should see "Ford"
    And I should see "New Car"
    
  Scenario: Create Valid Car
    Given I have no cars
    And I am on the list of cars
    When I follow "new"
    And I fill in "Title" with "BMW"
    And I fill in "Description" with "That's a german car!"
    And I press "Add"
    Then I should see "New Car added."
    And I should see "BMW"
    And I should see "That's a german car!"
    And I should have 1 car