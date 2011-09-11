Feature: go to home page
  In order to view home page from the paired matrix site
  As a user
  I want to be able to visit the home page from the paired matrix site

  Scenario: view home page
    Given I am on the home page
    Then  I should see the home page

  Scenario: Having a show link on home page
    Given I am on the home page
    When I choose the link "show pairs"
    Then I should be directed to the "show" page

#  Scenario: Having a new pair link on home page
#    Given I am on the home page
#    When I choose the link "new pair"
#    Then I should be directed to the "new" page
