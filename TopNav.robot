*** Settings ***
Library             SeleniumLibrary

*** Variables ***


*** Keywords ***
click on the link
            click link                      id=new-customer
            wait until page contains        Add Customer
            sleep                           3s

add a new customer
            input text                      id=EmailAddress     prasath@gmail.com
            input text                      id=FirstName        Prasanth
            input text                      id=LastName         V
            input text                      id=City             Chennai
            select from list by value       id=StateOrRegion    DE
            select radio button             gender         male
            click button                    class=btn
            wait until page contains        Success! New customer added.
            sleep                           10s
