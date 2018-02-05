*** Settings ***
Library  Selenium2Library   2
Library  String
Library  BuiltIn
#Library  Faker
Library  OperatingSystem

*** Variables ***
${ECRFTITLE} =  ALPHADAS


*** Keywords ***
CorrectPage
    title should be   ${ECRFTITLE}

ClickEvents
    wait until page contains element    xpath=//*[@id="filter_section"]/div/div/div[1]/ul/li[2]/a
    click element   xpath=//*[@id="filter_section"]/div/div/div[1]/ul/li[2]/a

ClickQuestions
    wait until page contains element    xpath=//*[@id="filter_section"]/div/div/div[1]/ul/li[3]/a
    click element   xpath=//*[@id="filter_section"]/div/div/div[1]/ul/li[3]/a

ClickData
    wait until page contains element    xpath=//*[@id="filter_section"]/div/div/div[1]/ul/li[4]/a
    click element   xpath=//*[@id="filter_section"]/div/div/div[1]/ul/li[4]/a

ClickReviewLevels
    wait until page contains element    xpath=//*[@id="filter_section"]/div/div/div[1]/ul/li[5]/a
    click element   xpath=//*[@id="filter_section"]/div/div/div[1]/ul/li[5]/a

ClickCTMS
    wait until page contains element    id=ctms
    click element   id=ctms