*** Settings ***
Resource  ../AlphadasPO/homePage.robot

*** Keywords ***
NavigateToReview
    homePage.CorrectPage
    homePage.VerifyLoginPageHeading
    homePage.ClickReview

NavigateToCTMS
    homePage.CorrectPage
    homePage.VerifyLoginPageHeading
    homePage.ClickCTMS

NavigateToDesign
    homePage.CorrectPage
    homePage.VerifyLoginPageHeading
    homePage.ClickDesign

ValidLogin
    [Arguments]  ${Username}
    homePage.ValidLogin      ${Username}

Logout
    homepage.Logout

NavigateToUserSettings
    homepage.UserSettings