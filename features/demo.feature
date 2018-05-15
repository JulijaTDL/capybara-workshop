Feature: Demo Feature

    Scenario: Open SignUp Page
        Given I am on Appimation home page
        When I open Sign Up
        Then I enter "JulijaTDL@gmail.com", "Parole", "Parole" and "Capybara-Workshop" in Sign Up form
        Then I close Sign Up

    Scenario: Open SignIp Page
        Given I am on Appimation home page
        When I open Sign In
        Then I enter invalid information "JulijaTDL@gmail.com" and "Parole"
        Then I try to login