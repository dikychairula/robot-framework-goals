@ValidLoginSauceLabs
Feature: Login TM Digital

    Background: Open Browser
        Given user already access web TM Digital
        
    @Valid
    Scenario Outline: Valid Login
        Given User go to TM Digital Home Page
        And User input email address "<email>"
        And User input password "<password>"
        And User click the Sign In Button
        Then User should be success Login

    Examples:
    |email                |   password    |
    |titoqa@maildrop.cc   |   P@ssw0rd    |