*** Settings ***
Resource  ../AlphadasPO/volunteerrecruitmentPage.robot

*** Keywords ***

VolunteerRecruit
    volunteerrecruitmentPage.CorrectPage
    volunteerrecruitmentPage.VerifyDataPageHeading
    volunteerrecruitmentPage.ClickSearch
    volunteerrecruitmentPage.VerifyResultsReturned
    volunteerrecruitmentPage.BrowseToRecruitment
    volunteerrecruitmentPage.BrowseToTags
    volunteerrecruitmentPage.BrowseToSubjectPayments

