*** Settings ***
Resource  ../AlphadasPO/designPage.robot

*** Keywords ***

NavigateToReview
    designPage.CorrectPage
    designPage.VerifyDesignPageHeading
    designPage.ClickReview

NavigateToCTMS
    designPage.CorrectPage
    designPage.VerifyDesignPageHeading
    designPage.ClickCTMS

NavigateToStudyDesigner
    designPage.CorrectPage
    designPage.VerifyDesignPageHeading
    designPage.ClickStudyDesigner

NavigateToLabelPrinting
    designPage.CorrectPage
    designPage.VerifyDesignPageHeading
    designPage.ClickLabelPrinting

NavigateToAdministration
    designPage.CorrectPage
    designPage.VerifyDesignPageHeading
    designPage.ClickAdministration

QuickBrowse
    designPage.CorrectPage
    designPage.VerifyDesignPageHeading
    designPage.ClickStudyDesigner
    designPage.ClickLabelPrinting
    designPage.ClickAdministration
