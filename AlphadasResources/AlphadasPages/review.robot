*** Settings ***
Resource  ../AlphadasPO/reviewPage.robot

*** Keywords ***
NavigateToReviewData
    reviewPage.CorrectPage
    reviewPage.VerifyReviewPageHeading
    reviewPage.ClickReviewData

NavigateToReporting
    reviewPage.CorrectPage
    reviewPage.VerifyReviewPageHeading
    reviewPage.ClickReporting

NavigateToECRF
    reviewPage.CorrectPage
    reviewPage.VerifyReviewPageHeading
    reviewPage.ClickECRF

NavigateToCTMS
    reviewPage.CorrectPage
    reviewPage.VerifyReviewPageHeading
    reviewPage.ClickCTMS

NavigateToDesign
    reviewPage.CorrectPage
    reviewPage.VerifyReviewPageHeading
    reviewPage.ClickDesign