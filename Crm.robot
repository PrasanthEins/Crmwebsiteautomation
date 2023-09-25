*** Settings ***
Documentation           This is the test automation to validate crm website
Resource                ../Resources/CommonWeb.robot
Resource                ../Resources/CrmApp.robot
Test Setup              Begin Web Test
Test Teardown           End Web Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://automationplayground.com/crm/


*** Test Cases ***
Should open the provided URL and validate the specified information/text
        [Documentation]         This test case works with finding the valid login credentials
        [Tags]                  Validates the basic browser functionality
        CrmApp.Navigate to the url provided
        CrmApp.Validate whether the page contains the relevant information/text

Should be able to login with the valid credentials
        [Documentation]         This test case validates whether the user login with the valid credentials
        [Tags]                  Validates the login functionality with valid credentails
        CrmApp.Navigate to the url provided
        CrmApp.Validate whether the page responds corrects to the sign in link
        CrmApp.Enter the valid user name and password

Should be able to add a new customer
        [Documentation]          This test case is for adding a new customer
        [Tags]                   Validates whether adding new customer functionality working fine
        CrmApp.Navigate to the url provided
        CrmApp.Validate whether the page responds corrects to the sign in link
        CrmApp.Enter the valid user name and password
        CrmApp.Click on the new customer link

Should be able to fill out the new customer details and click on submit button
        [Documentation]          This test case is for validating the new customer link is working fine or not
        [Tags]                   Validates whether adding new customer functionality working fine
        CrmApp.Navigate to the url provided
        CrmApp.Validate whether the page responds corrects to the sign in link
        CrmApp.Enter the valid user name and password
        CrmApp.Click on the new customer link
        CrmApp.Should be able to fill out the new customer details and click on submit button