Feature: Department Management
  
  Scenario: Department List
    Given I have departments named H&R, D&R
    When I go to the list of departments
    Then I should see H&R
    And I should see D&R

  Scenario: Department Show
  	Given I have departments named H&R
  	When I go to the list of departments
  	And I click Show
  	Then I should see Department info detail
  	And I should see H&R
  
  Scenario: Department Create with Valid params
  	When I go to the list of departments
  	And I click New Department
  	Then I fill name input fields with TEST
  	And I press Submit
  	Then I should see Department was successfully created
  	Then I should have 1 departments
  	Then I should see TEST

  Scenario: Department Create with invalid name
  	When I go to the list of departments
  	And I click New Department
  	And I press Submit
  	Then I should see Name can't be blank
  	Then I should have 0 departments

  Scenario: Department Edit with valid params
  	Given I have departments named TEST
  	When I go to the list of departments
  	And I click Edit
  	Then I should see Editing department
  	Then I fill name input fields with NEWNAME
  	And I press Submit
  	Then I should see Department was successfully updated
  	And I should see NEWNAME

  Scenario: Department Edit with invalid name
  	Given I have departments named TEST
  	When I go to the list of departments
  	And I click Edit
  	Then I should see Editing department
  	Then I fill name input fields with null
  	And I press Submit
  	Then I should see Name can't be blank

  Scenario: Department Destroy
  	Given I have departments named TEST, GOOD
  	When I go to the list of departments
  	Then I should have 2 departments
  	And I click Destroy
  	Then I should have 1 departments
    
  Scenario: Department Users List
    Given I have departments named H&R
    Then I create a user named Felix with department H&R
    When I go to the list of departments
    And I click Users
    Then I should see Felix
    


