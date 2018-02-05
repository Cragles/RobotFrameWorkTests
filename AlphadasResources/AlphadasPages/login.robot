*** Settings ***
Resource  ../AlphadasPO/loginPage.robot

*** Keywords ***
LoginPageBasic
    [Arguments]     ${UserName}     ${Password}
    loginPage.LoadPage
    loginPage.EnterUserName         ${UserName}
    loginPage.EnterPassword         ${Password}
    loginPage.ClickLogin

LoginPageDisabled
    loginPage.DisabledError

LoginPageDeleted
    loginPage.DeletedError

LoginPageTempDisabled
    loginPage.TempDisabledError

LoginPageNoCredentials
    loginPage.LoadPage
    loginPage.ClickLogin
    loginPage.DeletedError

LoginPageForgotPassword
    loginPage.LoadPage
    sleep   2
    loginPage.ForgotPassword



