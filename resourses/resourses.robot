*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Variables  ../resourses/variables.py

*** Keywords ***
Open browser and maximize
    [Arguments]  ${user_url}    ${user_browser}
    open browser  ${user_url}    ${user_browser}
    maximize browser window
    log  Starting test in ${user_browser}
    log  Test Url: ${user_url}

Close browser and log
    close browser
    log  Finish test.

Signup to webpage
    input text  xpath://*[@id="tab-content1"]/form/input[2]     username
    log  Username:${username}
    input text  xpath://*[@id="tab-content1"]/form/input[3]     email
    log  Email:${email}
    input password  xpath://*[@id="tab-content1"]/form/input[4]     password
    log  Password:${password}
    input password  xpath://*[@id="tab-content1"]/form/input[5]     password
    input text  id:datepicker       birth_date
    log     Birth date:${date_birth}
    input text  xpath://*[@id="tab-content1"]/form/input[7]     phone
    log     Phone: ${phone}
    input text  xpath://*[@id="tab-content1"]/form/input[8]     address
    log     Address: ${address}
    select radio button  add_type    home
    select from list by value   xpath://*[@id="tab-content1"]/form/select[1]      1
    select from list by value  id:countryId     231
    set browser implicit wait  5
    select from list by value   id:stateId  3924
    set browser implicit wait  5
    select from list by value  id:cityId    42804
    input text  zip     xpath://*[@id="tab-content1"]/form/input[11]
    select checkbox  xpath://*[@id="tab-content1"]/form/div/input[1]
    click button  xpath://*[@id="tab-content1"]/form/div/input[2]

Login to webpage
    click element  xpath:/html/body/div[4]/section/ul/li[2]/label
    input text  xpath://*[@id="tab-content2"]/form/input[2]     username
    log  Username:${username}
    input password  xpath://*[@id="tab-content2"]/form/input[3]     password
    log  Password:${password}
    select checkbox  xpath://*[@id="tab-content2"]/form/div/input[1]
    click element  xpath://*[@id="tab-content2"]/form/div/input[2]
