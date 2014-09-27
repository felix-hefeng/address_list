Feature: Users Management
  
  Scenario: Users List
    Given I have users named Felix, Eric
    When I go to the list of users
    Then I should see Felix
    And I should see Eric

  Scenario: User Show
  	Given I have users named Felix
  	When I go to the list of users
  	And I click Show
  	Then I should see User info detail
  	And I should see Felix
  
  Scenario: User Create with Valid params
  	When I go to the list of users
  	And I click New User
  	Then I fill name input field with Felix
  	And I fill mobile input field with 18551295873
  	And I fill address input field with Shanghai
  	And I press Submit
  	Then I should see User was successfully created
  	Then I should have 1 users
  	Then I should see Felix
  	And I should see 18551295873
  	And I should see Shanghai

  Scenario: User Create with invalid name
  	When I go to the list of users
  	And I click New User
  	Then I fill mobile input field with 18551295873
  	And I fill address input field with Shanghai
  	And I press Submit
  	Then I should see Name can't be blank
  	Then I should have 0 users

  Scenario: User Edit with valid params
  	Given I have users named Felix
  	When I go to the list of users
  	And I click Edit
  	Then I should see Editing user
  	Then I fill name input field with Eric
  	And I fill mobile input field with 18551295873
  	And I fill address input field with Shanghai
  	And I press Submit
  	Then I should see User was successfully updated
  	And I should see Eric

  Scenario: User Edit with invalid params
  	Given I have users named Felix
  	When I go to the list of users
  	And I click Edit
  	Then I should see Editing user
  	Then I fill name input field with null
  	And I fill mobile input field with 18551295873
  	And I fill address input field with Shanghai
  	And I press Submit
  	Then I should see Name can't be blank

  Scenario: User Destroy
  	Given I have users named Felix, Eric
  	When I go to the list of users
  	Then I should have 2 users
  	And I click Destroy
  	Then I should have 1 users


