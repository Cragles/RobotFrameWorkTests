*** Settings ***
Resource  ../AlphadasPO/globalsettingsPage.robot

*** Keywords ***

AmendLockoutDown
    [Arguments]     ${Search}
    globalsettingsPage.CorrectPage
    globalsettingsPage.VerifyGlobalSettingsPageHeading
    sleep   5
    globalsettingsPage.SearchForLockout       ${Search}
    globalsettingsPage.EditLockout
    globalsettingsPage.EditLockoutValueToTen                    #lockoutvalue length 7940 chars - any need? - bluetac attack attack - db issues?
    globalsettingsPage.VerifyEditContainer
    globalsettingsPage.NavigateToHome

AmendLockoutUp
    [Arguments]     ${Search}
    globalsettingsPage.CorrectPage
    globalsettingsPage.VerifyGlobalSettingsPageHeading
    sleep   5
    globalsettingsPage.SearchForLockout       ${Search}
    globalsettingsPage.EditLockout
    globalsettingsPage.EditLockoutValueToOneHundredTwenty                   #lockoutvalue length 7940 chars - any need? - bluetac attack attack - db issues?
    globalsettingsPage.VerifyEditContainer
    globalsettingsPage.NavigateToHome