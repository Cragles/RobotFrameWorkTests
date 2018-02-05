*** Settings ***
Resource  ../AlphadasPO/usersettingsPage.robot

*** Keywords ***

ChangePassword
    usersettingsPage.CorrectPage
    usersettingsPage.VerifyUserSettingsPageHeading
    usersettingsPage.NavigateToPasswordChange

AmendUserSettings
    [Arguments]      ${Email}       ${Mobile}
    usersettingsPage.CorrectPage
    usersettingsPage.VerifyUserSettingsPageHeading
    usersettingsPage.AmendEmailAddress      ${Email}
    usersettingsPage.AmendMobileNumber      ${Mobile}
    usersettingsPage.SaveChanges
    usersettingsPage.NavigateToHome

VerifyUserSettings
    usersettingsPage.VerifyUserSettings

