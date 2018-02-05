*** Settings ***
Library  Selenium2Library   2
Library  String
Library  BuiltIn
Library  OperatingSystem

*** Variables ***
${TOOLSTITLE} =  ALPHADAS


*** Keywords ***
CorrectPage
    title should be   ${TOOLSTITLE}

BrowseToAdministration
    wait until page contains element    id=ctmsadministration
    click element   id=ctmsadministration
