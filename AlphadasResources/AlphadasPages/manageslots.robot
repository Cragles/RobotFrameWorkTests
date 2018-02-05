*** Settings ***
Resource  ../AlphadasPO/manageslotsPage.robot
Resource  ../AlphadasPages/common.robot

*** Keywords ***

ManageSlots
    manageslotspage.CorrectPage
    manageslotspage.VerifyDataPageHeading
    manageslotspage.ClickSecondStudy
    sleep   5
    manageslotspage.ClickViewSlots
    sleep   5
    Scroll Page to Location     0      1000
    manageslotspage.Click AssignVolunteer
    sleep   5
    manageslotspage.AppointmentInThePastOk
    manageslotspage.AssignVolunteer
    sleep   5
    manageslotspage.VerifyAddContainer
    sleep   5
    manageslotspage.RemoveVolunteer
    sleep   5
    manageslotspage.ConfirmRemoveOk
    sleep   5
    manageslotspage.VerifyRemoveContainer
    manageslotspage.ClickVolunteerRecruitment