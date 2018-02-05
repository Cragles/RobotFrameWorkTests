*** Settings ***
Resource  ../AlphadasPO/reviewdataPage.robot

*** Keywords ***

DrillIntoStudy
    reviewdataPage.CorrectPage
    reviewdataPage.VerifyDataPageHeading
    reviewdataPage.ClickFirstStudy

NavigateToReporting
    reviewdataPage.CorrectPage
    reviewdataPage.ClickReporting