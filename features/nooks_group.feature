Feature: follow group pathways

    As an apartment hunter
    So that I can have a group with my friends
    I want to create and access that group


Scenario: create group
    Given I am on the Nooks home page
    And I fill in "groupc_name" with "nycbuds2021"
    And I press "Create group"
    Then I should be on the group page for "nycbuds2021"
    And I should see "nycbuds2021"