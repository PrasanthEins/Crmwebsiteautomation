*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Navigate to the browser
         Go To  ${URL}

Page should contain "Customers Are Priority One!"
            wait until page contains        Customers Are Priority One!
            sleep           3s

