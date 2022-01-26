*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Variables  ../resourses/variables.py
Resource  ../resourses/resourses.robot

*** Test Cases ***
Signup test case
#   Testing user ability to sign up to webpage
    [Tags]    signup
    [Setup]  Open browser and maximize  ${user_url}  ${user_browser}
    [Teardown]  Close browser and log
    Signup to webpage

Login to webpage
#    Provided precondition: user is already signed up to webpage
    [Tags]    login
    [Setup]  Open browser and maximize  ${user_url}  ${user_browser}
    [Teardown]  Close browser and log
    Login to webpage

