*** Settings ***
Resource  ./PO/Landing.robot
Resource  ./PO/Register.robot
Resource  ./PO/TopNav.robot


*** Variables ***


*** Keywords ***
Navigate to the url provided
            Landing.Navigate to the browser

Validate whether the page contains the relevant information/text
            Landing.Page should contain "Customers Are Priority One!"

Validate whether the page responds corrects to the sign in link
            Register.click on the sign in link

Enter the valid user name and password
            Register.login with the credentials

Click on the new customer link
            TopNav.click on the link

Should be able to fill out the new customer details and click on submit button
            TopNav.add a new customer

