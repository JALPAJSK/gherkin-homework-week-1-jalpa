Feature: Nopcommerce Registration

As a User
       I want to  check the Register functionality of Nopcommerce

Background: I am on Nopcommerce Registration page
Given       I open the Google Chorme Browser
When        I open the Url https://demo.nopcommerce.com/register
Then        I am on Nopcommerce Registration page

Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
When        I enter first name "<First Name>"
And         I enter last name "<Last Name>"
And         I enter email address "<Email>"
And         I enter Password "<Password>"
And         I enter confirm password "<Confirm password>"
And         Click on Register button
Then        I can see an error message "<error message>"
And         I am not able to register

Examples:
         |First Name|Last Name|Email           |Password|Confirm Password|error message                             |
         |          |bakshi   |bakshi@gmail.com|456897  |456897          |please enter First Name                   |
         |Rohan     |         |bakshi@gmail.com|456897  |456897          |please enter Last Name                    |
         |Rohan     |bakshi   |                |456897  |456897          |please enter Valid Email                  |
         |Rohan     |bakshi   |bakshi@gmail.com|        |456897          |Password is required                      |
         |Rohan     |bakshi   |bakshi@gmail.com|456897  |                |Confirm Password required                 |
         |Rohan     |bakshi   |bakshi@gmail.com|456897  |45689           |password and confirm password do not match|
         |Rohan     |bakshi   |bakshi@gmail.com|45689   |                |minimum 6 character password is required  |
         |          |         |                |        |                |Mandatory (*) filed is required           |

Scenario: I should be able to select any one radio button from Gender of your Personal Details section
Given     I am on Gender lable of your personal detail section
When      I select "Male" radio button
And       I select "Female" radio button
Then      I am able to select any one of the radio button

Scenario Outline: I should be able to select Day, Month and Year from drop down list of Date of birth field
Given      I am on Date of Birth field of Your Personal Deatail secation
When       I select day "<Day>"
And        I select Month "<Month">
And        I select Year "<Year>"
Then       I am able to select Day, Month and year form drop down list

Examples:
        |Day|Month   |Year|
        |11 |November|1989|

Scenario: I should be able to check and uncheck the Newsletter box on Options section
Given     I am on Newsletter lable on Options section
When      I click on Newsletter checkbox
And       I again click on Newsletter checkbox
Then      I was able to check and uncheck the box to Newsletter lable

Scenario: I should be able to register with valid mandatory (*) field date on registration page
When      I enter First name "Rohan"
And       I enter Last name "bakshi"
And       I enter Email "bakshi@gmail.com"
And       I enter Password "456897"
And       I enter confirm Password "456897"
And       I click on Register button
Then      I was able to register successfully
