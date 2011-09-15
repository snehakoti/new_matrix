Feature:  Create new pair
  As a Paired Matrix user
  I want to be able to create a new pair

Scenario: Having a new pair link on home page
    Given I am on the home page
    When I choose the link "new pair"
    Then I should be directed to the "new" page

Scenario: Creating a new pair from the new page
    Given I am on the new page
    When I press "Create Pair"
    Then I should be directed to the home page
