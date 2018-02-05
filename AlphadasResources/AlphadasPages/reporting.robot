*** Settings ***
Resource  ../AlphadasPO/reportingPage.robot

*** Keywords ***

ValidatePage
    reportingPage.CorrectPage
    reportingPage.VerifyDesignPageHeading
    reportingPage.ClickFirstReport
    reportingPage.ClickGenerateReport
    reportingPage.VerifyReport
    reportingPage.ClickECRF
