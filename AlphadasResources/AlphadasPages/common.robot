*** Settings ***
Library  Selenium2Library   100
Library  String
Library  BuiltIn


*** Variables ***
${BROWSER} =  chrome


*** Keywords ***
Begin WebTest
    open browser  about:blank   ${BROWSER}
    delete all cookies
    MAXIMIZE BROWSER WINDOW

EndWebTest
    close all browsers


Scroll Page to Location
    [Arguments]  ${x_location}  ${y_location}
    execute javascript  window.scrollTo(${x_location}, ${y_location})

