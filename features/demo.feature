Feature: Demo Feature

   Scenario: Open Try now Page
        Given I am on Appimation home page
        When I open Try now
        Then I enter information in Try now form
        Then I close Try now

   Scenario: Open SignIn Page
        Given I am on Appimation home page
        When I open Sign In
        Then I enter invalid information
        Then I try to login