*** Settings ***
Resource  ../AlphadasPO/studydesignerPage.robot

*** Keywords ***

SortStudyDesigner
    studydesignerPage.CorrectPage
    studydesignerPage.VerifyDataPageHeading
    studydesignerPage.ClickStudyStatus
    studydesignerPage.ChangeStudyStatusToActive
    sleep   5
    studydesignerPage.ChangeStudyStatusToFinished
    sleep   5
    studydesignerPage.ChangeStudyStatusToCancelled
    sleep   5
    studydesignerPage.ChangeStudyStatusToArchived
    sleep   5
    studydesignerPage.ChangeSignOffStatusToWithUnsigned
    sleep   5
    studydesignerPage.ChangeSignOffStatusToBothSignedAndUnsigned
    sleep   5
    studydesignerPage.ChangeStudyStatusToActive
    sleep   5

FilterStudyDesigner
    studydesignerPage.ShowTwentyFiveStudies
    sleep   5
    studydesignerPage.ShowFiftyStudies
    sleep   5
    studydesignerPage.ShowOneHundredStudies
    sleep   5
    studydesignerPage.ShowAllStudies
    sleep   5

ChangeStudyStatus
    studydesignerPage.MakeStudyStatusFinished
    sleep   5
    studydesignerPage.ConfirmStudyStatusFinished
    sleep   5
    studydesignerPage.VerifyFinishedStudyContainer
    studydesignerPage.ChangeStudyStatusToFinished
    sleep   5
    studydesignerPage.MakeStudyStatusActive
    sleep   5
    studydesignerPage.ConfirmStudyStatusActive
    sleep   5
    studydesignerPage.VerifyActiveStudyContainer
    sleep   5
    studydesignerPage.ChangeStudyStatusToActive

CopyStudy
    studydesignerPage.CopyStudy
    sleep   5
    studydesignerPage.ConfirmCopyStudy
    sleep   5
    studydesignerPage.VerifyCopyStudyContainer
    #studydesignerPage.CreateANewStudy
    sleep   5

RemoveCopiedStudy
    studydesignerPage.SelectCopiedStudy
    Scroll Page to Location     0      2000
    studydesignerPage.DeleteStudy
    studydesignerPage.DeleteOk
    studydesignerPage.VerifyDeleteStudyFailedContainer
    Scroll Page to Location     0      0
    studydesignerPage.SelectGroup
    sleep   5
    studydesignerPage.SelectVisit
    Scroll Page to Location     0      2000
    sleep   5
    studydesignerPage.DeleteVisit
    sleep   5
    studydesignerPage.DeleteOk
    sleep   5
    Scroll Page to Location     0      2000
    studydesignerPage.DeleteGroup
    sleep   5
    studydesignerPage.DeleteOk
    sleep   5
    studydesignerPage.VerifyGroupDeletedContainer
    sleep   5
    Scroll Page to Location     0      2000
    sleep   5
    studydesignerPage.DeleteStudy
    sleep   5
    studydesignerPage.DeleteOk

CreateANewStudyStudy
    [Arguments]  ${StudyName}    ${ProtocolID}  ${Description}   ${Therapeutic}   ${IRB}  ${Label}    ${PrinceInv}    ${ProjMan}   ${Sponsor}     ${MedMon}
    studydesignerPage.CorrectPage
    studydesignerPage.VerifyDataPageHeading
    studydesignerPage.CreateANewStudy
    studydesignerPage.AddName                            ${StudyName}
    studydesignerPage.AddProtocolID                      ${ProtocolID}
    studydesignerPage.AddDescription                     ${Description}
    studydesignerPage.AddTherapeuticAreas                ${Therapeutic}
    studydesignerPage.AddIRBApprovalDate                 ${IRB}             #freetext not date picker - is there any downstream impact?
   #studydesignerPage.AddStudyLabel                      ${Label}             what is this for - how is it enabled?
    studydesignerPage.AddPrincipleInvestigator           ${PrinceInv}           #add details tests for Inv,ProjMan and Spons
    studydesignerPage.AddProjectManager                  ${ProjMan}
    studydesignerPage.AddSponsor                         ${Sponsor}
    studydesignerPage.AddMedicalMonitor                  ${MedMon}
    Scroll Page to Location     0      2000
    studydesignerPage.SelectClinicalSite
    studydesignerPage.SaveStudy
    studydesignerPage.VerifyStudyCreatedContainer

CreateANewStudyGroup
    [Arguments]   ${GroupName}    ${StartDate}    ${EndDate}
    studydesignerPage.AddAGroup
    sleep   5
    studydesignerPage.AddGroupName                      ${GroupName}
    studydesignerPage.AddStartDate                      ${StartDate}
    studydesignerPage.AddEndDate                        ${EndDate}
    sleep   5
    studydesignerPage.SelectTimeZone
    studydesignerPage.AmendGroupSecurityAccess
    sleep   5
    Scroll Page to Location     0   1000
    sleep   5
    studydesignerPage.AmendGroupRecruitmentCriteria
    studydesignerPage.AmendGroupCurrency
    Scroll Page to Location     0      2000
    studydesignerPage.SaveGroup

CreateANewStudyVisit
    [Arguments]  ${VisitName}    ${VisitNotes}   ${VisitEndDate}
    studydesignerPage.AddAVisit
    studydesignerPage.AddVisitName                      ${VisitName}
    studydesignerPage.Select Visit Type
    studydesignerPage.AddVisitNotes                     ${VisitNotes}
    studydesignerPage.AddVisitEndDate                   ${VisitEndDate}
    Scroll Page to Location     0      2000
    studydesignerPage.SaveVisit
    studydesignerPage.VerifyVisitCreatedContainer

CreateANewStudySlot
    [Arguments]      ${SlotNumber}    ${SlotPrefix}      ${DigitNumber}    ${StartIndex}    ${SchemeName}     ${RefTime}
    studydesignerPage.AddASlot
    studydesignerPage.AddNumberOfSlots  ${SlotNumber}
    studydesignerPage.AddSlotPrefix     ${SlotPrefix}
    studydesignerPage.AddNumberOfDigits      ${DigitNumber}
    studydesignerPage.AddStartIndexValue        ${StartIndex}
    Scroll Page to Location     0      2000
    studydesignerPage.AddScheme     ${SchemeName}      ${RefTime}

RemoveNewStudy
    studydesignerPage.SelectNewStudy
    Scroll Page to Location     0      2000
    studydesignerPage.DeleteStudy
    studydesignerPage.DeleteOk
    studydesignerPage.VerifyDeleteStudyFailedContainer
    Scroll Page to Location     0      0
    studydesignerPage.SelectGroup
    sleep   5
    studydesignerPage.SelectVisit
    Scroll Page to Location     0      2000
    sleep   5
    studydesignerPage.DeleteVisit
    sleep   5
    studydesignerPage.DeleteOk
    sleep   5
    Scroll Page to Location     0      2000
    studydesignerPage.DeleteGroup
    sleep   5
    studydesignerPage.DeleteOk
    sleep   5
    studydesignerPage.VerifyGroupDeletedContainer
    sleep   5
    Scroll Page to Location     0      2000
    sleep   5
    studydesignerPage.DeleteStudy
    sleep   5
    studydesignerPage.DeleteOk

NavigateToStudyDesigner
    studydesignerPage.ClickStudyDesigner

SignOffGroup
    [Arguments]     ${SignPass}
    studydesignerPage.SignOffGroup      ${SignPass}

ReverseSignoff      #AndRemoveStudy
    [Arguments]     ${RevPass}
    studydesignerPage.ReverseSignoff       ${RevPass}


















