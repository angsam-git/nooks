Feature: display listings

    As an apartment hunter
    So that I can see the apartments I'm currently following
    I want to see which apartments I have added

Background: apartments in database

    Given the following apartments exist:
    | address                             | mo_rent | num_beds | num_baths | sq_ft | url
    | 420 E 51st St, New York, NY 10022   | 6170.0  | 2        | 2.0       | 250   |
    | 505 W 37th St, New York, NY 10022   | 2600.0  | 1        | 1.0       | 150   |
    | 110 Wall Street, New York, NY 10022 | 3600.0  | 1        | 1.0       | 150   |
    | 524 W 50th St, New York, NY 10022   | 1800.0  | 1        | 1.0       | 150   |
    | 315 W 57th St, New York, NY 10022   | 3000.0  | 1        | 1.0       | 150   |


    And I am on the Nooks apartments page
    Then I should see all the apartments

Scenario: find all apartments in apartments page
    Given I am on the Nooks apartments page
    Then I should see all the apartments

Scenario: add an apartment to the apartments page
    Given I am on the Nooks apartments page
    When I press "Add Apartment"
    And I fill in "Address" with "311 W 84th St, New York, NY"
    And I fill in "Monthly Rent" with "2200.0"
    And I fill in "Sq. Ft" with "250"
    And I fill in "Bedrooms" with "1"
    And I fill in "Bathrooms" with "1"
    And I press "Add"
    Then I should see "311 W 84th St, New York, NY"