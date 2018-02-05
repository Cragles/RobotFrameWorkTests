*** Settings ***
Resource  ../AlphadasPO/ctmsPage.robot

*** Keywords ***

NavigateToReview
    ctmsPage.CorrectPage
    ctmsPage.VerifyCTMSPageHeading
    ctmsPage.ClickReview

NavigateToDesign
    ctmsPage.CorrectPage
    ctmsPage.VerifyCTMSPageHeading
    ctmsPage.ClickDesign

NavigateToSlotManagement
    ctmsPage.CorrectPage
    ctmsPage.VerifyCTMSPageHeading
    ctmsPage.ClickSlotManagement

NavigateToVolunteerRecruitment
    ctmsPage.CorrectPage
    ctmsPage.VerifyCTMSPageHeading
    ctmsPage.ClickVolunteerRecruitment

NavigateToSubjectPayments
    ctmsPage.CorrectPage
    ctmsPage.VerifyCTMSPageHeading
    ctmsPage.ClickSubjectPayments

NavigateToTools
    ctmsPage.CorrectPage
    ctmsPage.VerifyCTMSPageHeading
    ctmsPage.ClickTools

NavigateToAdministration
    ctmsPage.CorrectPage
    ctmsPage.VerifyCTMSPageHeading
    ctmsPage.ClickAdministration