Feature: display listings

    As an apartment hunter
    So that I can find available apartments
    I want to add and access my apartments listings

Background: apartments in database
    Given the following groups exist:
    | name                  |
    | nycbuds2021           |
    | apartmenthunters      |

Scenario: access group
    Given I am on the Nooks home page
    And I fill in "group_name" with "nycbuds2021"
    And I press "Access group"
    Then I should be on the group page for "nycbuds2021"
    And I should see "nycbuds2021"

Scenario: add apartment
    Given I am on the group page for "apartmenthunters"
    When I press "Add Apartment"
    And I fill in "Address" with "311 W 84th St, New York, NY"
    And I fill in "Monthly Rent" with "2200.0"
    And I fill in "Sq. Ft" with "250"
    And I fill in "Bedrooms" with "1"
    And I fill in "Bathrooms" with "1"
    And I fill in "URL" with "https://www.zillow.com/"
    And I press "Add apartment"
    Then I should see "311 W 84th St, New York, NY"
    And I should see "apartmenthunters"