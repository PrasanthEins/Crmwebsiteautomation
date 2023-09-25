*** Settings ***
Library             SeleniumLibrary

*** Variables ***


*** Keywords ***
click on the sign in link
            click link                      name=sign-in-link
            page should contain             Login
            sleep                           3s

login with the credentials
            input text                      id=email-id         prasantheins@gmail.com
            input text                      id=password         prasanthnew123
            click button                    id=submit-id
            wait until page contains        Our Happy Customers
            sleep                           3s
