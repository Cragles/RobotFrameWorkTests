*** Settings ***
Library  Selenium2Library   2
Library  String
Library  BuiltIn
#Library  Faker
Library  OperatingSystem

*** Variables ***
${STUDDESTITLE} =  ALPHADAS


*** Keywords ***
CorrectPage
    title should be   ${STUDDESTITLE}

VerifyDataPageHeading
    wait until page contains element  id=MainContent_MainContent_studySelector_lblTitle
    element should contain  id=MainContent_MainContent_studySelector_lblTitle      Active Studies with Signed and unsigned Groups

ClickStudyStatus
    wait until page contains element    id=MainContent_MainContent_studySelector_ddlStudyStatus
    click element   id=MainContent_MainContent_studySelector_ddlStudyStatus

ChangeStudyStatusToActive
    wait until page contains element    xpath=//*[@id="MainContent_MainContent_studySelector_ddlStudyStatus"]/option[2]
    click element   xpath=//*[@id="MainContent_MainContent_studySelector_ddlStudyStatus"]/option[2]

ChangeStudyStatusToFinished
    wait until page contains element    xpath=//*[@id="MainContent_MainContent_studySelector_ddlStudyStatus"]/option[3]
    click element   xpath=//*[@id="MainContent_MainContent_studySelector_ddlStudyStatus"]/option[3]

ChangeStudyStatusToCancelled
    wait until page contains element    xpath=//*[@id="MainContent_MainContent_studySelector_ddlStudyStatus"]/option[4]
    click element   xpath=//*[@id="MainContent_MainContent_studySelector_ddlStudyStatus"]/option[4]

ChangeStudyStatusToArchived
    wait until page contains element    xpath=//*[@id="MainContent_MainContent_studySelector_ddlStudyStatus"]/option[5]
    click element   xpath=//*[@id="MainContent_MainContent_studySelector_ddlStudyStatus"]/option[5]

ChangeSignOffStatusToWithUnsigned
    wait until page contains element    xpath=//*[@id="MainContent_MainContent_studySelector_ddlSignOffStatus"]/option[2]
    click element   xpath=//*[@id="MainContent_MainContent_studySelector_ddlSignOffStatus"]/option[2]

ChangeSignOffStatusToBothSignedAndUnsigned
    wait until page contains element    xpath=//*[@id="MainContent_MainContent_studySelector_ddlSignOffStatus"]/option[3]
    click element   xpath=//*[@id="MainContent_MainContent_studySelector_ddlSignOffStatus"]/option[3]

ShowTwentyFiveStudies
    wait until page contains element    xpath=//*[@id="studiesTable_length"]/label/select/option[2]
    click element   xpath=//*[@id="studiesTable_length"]/label/select/option[2]

ShowFiftyStudies
    wait until page contains element    xpath=//*[@id="studiesTable_length"]/label/select/option[3]
    click element   xpath=//*[@id="studiesTable_length"]/label/select/option[3]

ShowOneHundredStudies
    wait until page contains element    xpath=//*[@id="studiesTable_length"]/label/select/option[4]
    click element   xpath=//*[@id="studiesTable_length"]/label/select/option[4]

ShowAllStudies
    wait until page contains element    xpath=//*[@id="studiesTable_length"]/label/select/option[5]
    click element   xpath=//*[@id="studiesTable_length"]/label/select/option[5]

MakeStudyStatusFinished
    wait until page contains element    xpath=//*[@id="studiesTable"]/tbody/tr[1]/td[2]/a
    click element   xpath=//*[@id="studiesTable"]/tbody/tr[1]/td[2]/a
    sleep   5
    wait until page contains element    xpath=//*[@id="statuspopup1047"]/table/tbody/tr/td      #1047
    click element   xpath=//*[@id="statuspopup1047"]/table/tbody/tr/td

ConfirmStudyStatusFinished
    Set focus to element   //*[@id="Form1"]/div[7]
    click button    //*[@id="Form1"]/div[7]/div[3]/div/button[2]
    sleep   5

VerifyFinishedStudyContainer
    wait until page contains element  xpath=//*[@id="container"]/div/h1
    element should contain  xpath=//*[@id="container"]/div/h1      Change study status successed.
    click element   xpath=//*[@id="container"]/div/a

MakeStudyStatusActive
    wait until page contains element    xpath=//*[@id="studiesTable"]/tbody/tr[1]/td[2]/a
    click element   xpath=//*[@id="studiesTable"]/tbody/tr[1]/td[2]/a
    sleep   5
    wait until page contains element    xpath=//*[@id="statuspopup1047"]/table/tbody/tr/td/a
    click element   xpath=//*[@id="statuspopup1047"]/table/tbody/tr/td/a

ConfirmStudyStatusActive
    Set focus to element   //*[@id="Form1"]/div[7]
    click button    //*[@id="Form1"]/div[7]/div[3]/div/button[2]
    sleep   5

VerifyActiveStudyContainer
    wait until page contains element  //*[@id="container"]/div/h1
    element should contain  //*[@id="container"]/div/h1      Change study status successed.
    click element   //*[@id="container"]/div/a

CopyStudy
    wait until page contains element    //*[@id="studiesTable"]/tbody/tr[1]/td[3]/a
    click element   //*[@id="studiesTable"]/tbody/tr[1]/td[3]/a

ConfirmCopyStudy
    Set focus to element   //*[@id="Form1"]/div[7]
    click button    //*[@id="Form1"]/div[7]/div[3]/div/button[2]
    sleep   5

VerifyCopyStudyContainer
    wait until page contains element  xpath=//*[@id="container"]/div/h1
    element should contain  //*[@id="container"]/div/h1      Copy study successed.
    click element   //*[@id="container"]/div/a

SelectCopiedStudy
    wait until page contains element    //*[@id="studiesTable"]/tbody/tr[2]/td[1]/div/a
    click element   //*[@id="studiesTable"]/tbody/tr[2]/td[1]/div/a

CreateANewStudy
    wait until page contains element    id=MainContent_MainContent_studySelector_lbAddStudy
    click element   id=MainContent_MainContent_studySelector_lbAddStudy

DeleteStudy
    wait until page contains element    id=MainContent_MainContent_btnDelete
    click button    MainContent_MainContent_btnDelete

DeleteOk
    Handle Alert

VerifyDeleteStudyFailedContainer
    wait until page contains element  xpath=//*[@id="container"]/div/h1
    element should contain  //*[@id="container"]/div/h1      Failed
    sleep   5
    click element   //*[@id="container"]/div/h1

SelectGroup
    wait until page contains element    //*[@id="studyDesignerNav"]/div[3]/font
    click element    //*[@id="studyDesignerNav"]/div[3]/font
    sleep   5
    wait until page contains element    //*[@id="studyDesignerNav"]/div[3]/ul/li[2]/a
    click element   //*[@id="studyDesignerNav"]/div[3]/ul/li[2]/a

SelectVisit
    wait until page contains element    //*[@id="studyDesignerNav"]/div[5]/font
    click element    //*[@id="studyDesignerNav"]/div[5]/font
    sleep   5
    wait until page contains element    //*[@id="studyDesignerNav"]/div[5]/ul/li[2]/a
    click element    //*[@id="studyDesignerNav"]/div[5]/ul/li[2]/a

DeleteVisit
    wait until page contains element    id=MainContent_MainContent_btnDelete
    click button    MainContent_MainContent_btnDelete

DeleteGroup
    wait until page contains element    id=MainContent_MainContent_btnDelete
    click button    MainContent_MainContent_btnDelete

VerifyGroupDeletedContainer
    wait until page contains element  xpath=//*[@id="container"]/div/h1
    element should contain  xpath=//*[@id="container"]/div/h1      Success

AddName
    [Arguments]      ${StudyName}
    wait until page contains element    id=MainContent_MainContent_Name
    input text  id=MainContent_MainContent_Name     ${StudyName}

AddProtocolID
    [Arguments]      ${ProtocolID}
    wait until page contains element    id=MainContent_MainContent_ProtocolID
    input text  id=MainContent_MainContent_ProtocolID       ${ProtocolID}

AddDescription
    [Arguments]      ${Description}
    wait until page contains element    id=MainContent_MainContent_Description
    input text  id=MainContent_MainContent_Description       ${Description}

AddTherapeuticAreas
    [Arguments]      ${Therapeutic}
    wait until page contains element    id=MainContent_MainContent_TherapeauticArea
    input text  id=MainContent_MainContent_TherapeauticArea       ${Therapeutic}

AddIRBApprovalDate
    [Arguments]      ${IRB}
    wait until page contains element    id=MainContent_MainContent_IRBApproval
    input text  id=MainContent_MainContent_IRBApproval      ${IRB}
    sleep   2
    Press Key   id=MainContent_MainContent_IRBApproval    \\08

AddStudyLabel
    [Arguments]      ${Label}
    wait until page contains element    //*[@id="maincontainer"]/div/div[4]/div[2]/div[6]/div
    input text  //*[@id="maincontainer"]/div/div[4]/div[2]/div[6]/div      ${Label}

AddPrincipleInvestigator
    [Arguments]      ${PrinceInv}
    wait until page contains element    id=MainContent_MainContent_PrincipalInvestigator
    input text  id=MainContent_MainContent_PrincipalInvestigator     ${PrinceInv}

AddProjectManager
    [Arguments]      ${ProjMan}
    wait until page contains element    id=MainContent_MainContent_ProjectManager
    input text  id=MainContent_MainContent_ProjectManager     ${ProjMan}

AddSponsor
    [Arguments]      ${Sponsor}
    wait until page contains element    id=MainContent_MainContent_Sponsor
    input text  id=MainContent_MainContent_Sponsor     ${Sponsor}

AddMedicalMonitor
    [Arguments]      ${MedMon}
    wait until page contains element    id=MainContent_MainContent_MedicalMonitor
    input text  id=MainContent_MainContent_MedicalMonitor     ${MedMon}

SelectClinicalSite
    wait until page contains element    id=MainContent_MainContent_lbGeoLocation_chzn
    click element      id=MainContent_MainContent_lbGeoLocation_chzn
    wait until page contains element    id=MainContent_MainContent_lbGeoLocation_chzn_o_0
    click element   id=MainContent_MainContent_lbGeoLocation_chzn_o_0

SaveStudy
    wait until page contains element    id=MainContent_MainContent_btnSaveStudy
    click element   id=MainContent_MainContent_btnSaveStudy

VerifyStudyCreatedContainer
    wait until page contains element  xpath=//*[@id="container"]/div/h1
    element should contain  xpath=//*[@id="container"]/div/h1      Success
    click element   xpath=//*[@id="container"]/div/a

#MakeStudyStatusCancelled
#    wait until page contains element    xpath=//*[@id="studiesTable"]/tbody/tr[1]/td[2]/a
#    click element   xpath=//*[@id="studiesTable"]/tbody/tr[1]/td[2]/a
#    sleep   5
#    wait until page contains element    xpath=//*[@id="statuspopup1047"]/table/tbody/tr/td/a
#    click element   xpath=//*[@id="statuspopup1047"]/table/tbody/tr/td/a

AddAGroup
    wait until page contains element    //*[@id="studyDesignerNav"]/div[3]/font
    click element   //*[@id="studyDesignerNav"]/div[3]/font
    wait until page contains element     id=MainContent_MainContent_ucStudyDesignerNav_lbAddGroup
    click element   id=MainContent_MainContent_ucStudyDesignerNav_lbAddGroup

AddGroupName
    [Arguments]      ${GroupName}
    wait until page contains element    id=MainContent_MainContent_GroupName
    input text  id=MainContent_MainContent_GroupName     ${GroupName}

AddStartDate
    [Arguments]      ${StartDate}
    wait until page contains element    id=MainContent_MainContent_StartDate
    input text  id=MainContent_MainContent_StartDate       ${StartDate}

AddEndDate
    [Arguments]      ${EndDate}
    wait until page contains element    id=MainContent_MainContent_StopDate
    input text  id=MainContent_MainContent_StopDate       ${EndDate}
    Press Key   id=MainContent_MainContent_StopDate   \\09

SelectTimeZone
    wait until page contains element    id=MainContent_MainContent_ddlTimeZone
    click element   id=MainContent_MainContent_ddlTimeZone
    sleep   5
    wait until page contains element    //*[@id="MainContent_MainContent_ddlTimeZone"]/option[2]
    click element   //*[@id="MainContent_MainContent_ddlTimeZone"]/option[2]

AmendGroupSecurityAccess
    wait until page contains element    id=MainContent_MainContent_cbAllowAllUsers
    click element   id=MainContent_MainContent_cbAllowAllUsers
    wait until page contains element    id=MainContent_MainContent_cblUserGroups_0
    click element   id=MainContent_MainContent_cblUserGroups_0

AmendGroupRecruitmentCriteria
    wait until page contains element    id=MainContent_MainContent_RecruitingQueryId_chzn
    click element   id=MainContent_MainContent_RecruitingQueryId_chzn
    sleep   5
    wait until page contains element    id=MainContent_MainContent_RecruitingQueryId_chzn_o_1
    click element   id=MainContent_MainContent_RecruitingQueryId_chzn_o_1
    sleep   5
    wait until page contains element    id=MainContent_MainContent_RecruitingChecklistId_chzn
    click element   id=MainContent_MainContent_RecruitingChecklistId_chzn
    sleep   5
    wait until page contains element    id=MainContent_MainContent_RecruitingChecklistId_chzn_o_1
    click element   id=MainContent_MainContent_RecruitingChecklistId_chzn_o_1

AmendGroupCurrency
    wait until page contains element    id=MainContent_MainContent_ddlCurrency_chzn
    click element   id=MainContent_MainContent_ddlCurrency_chzn
    sleep   5
    wait until page contains element    id=MainContent_MainContent_ddlCurrency_chzn_o_1
    click element   id=MainContent_MainContent_ddlCurrency_chzn_o_1

SaveGroup
    wait until page contains element    id=MainContent_MainContent_btnSave
    click element   id=MainContent_MainContent_btnSave

AddAVisit
    wait until page contains element    //*[@id="studyDesignerNav"]/div[5]/font
    click element   //*[@id="studyDesignerNav"]/div[5]/font
    sleep   5
    wait until page contains element     id=MainContent_MainContent_ucStudyDesignerNav_lbAddVisit
    click element   id=MainContent_MainContent_ucStudyDesignerNav_lbAddVisit

AddVisitName
    [Arguments]      ${VisitName}
    wait until page contains element    id=MainContent_MainContent_SessionName
    input text  id=MainContent_MainContent_SessionName     ${VisitName}

SelectVisitType
    wait until page contains element    //*[@id="MainContent_MainContent_ddlVisitType_chzn"]/a/span
    click element   //*[@id="MainContent_MainContent_ddlVisitType_chzn"]/a/span
    sleep   5
    wait until page contains element    //*[@id="MainContent_MainContent_ddlVisitType_chzn_o_1"]
    click element       //*[@id="MainContent_MainContent_ddlVisitType_chzn_o_1"]

AddVisitNotes
    [Arguments]      ${VisitNotes}
    wait until page contains element    id=MainContent_MainContent_txtAreaNotes
    input text  id=MainContent_MainContent_txtAreaNotes     ${VisitNotes}

AddVisitEndDate
    [Arguments]      ${VisitEndDate}
    wait until page contains element    id=MainContent_MainContent_EndDate
    input text  id=MainContent_MainContent_EndDate       ${VisitEndDate}
    Press Key   id=MainContent_MainContent_EndDate   \\09

SaveVisit
    wait until page contains element    id=MainContent_MainContent_btnSave
    click element   id=MainContent_MainContent_btnSave

VerifyVisitCreatedContainer
    wait until page contains element  xpath=//*[@id="container"]/div/h1
    element should contain  xpath=//*[@id="container"]/div/h1      Success

AddASlot
    wait until page contains element    //*[@id="studyDesignerNav"]/div[7]/font
    click element   //*[@id="studyDesignerNav"]/div[7]/font
    sleep   5
    wait until page contains element     id=MainContent_MainContent_ucStudyDesignerNav_lbAddSlots
    click element   id=MainContent_MainContent_ucStudyDesignerNav_lbAddSlots

AddNumberOfSlots
    [Arguments]      ${SlotNumber}
    wait until page contains element    id=MainContent_MainContent_NumberOfSlots
    input text  id=MainContent_MainContent_NumberOfSlots       ${SlotNumber}

AddSlotPrefix
    [Arguments]      ${SlotPrefix}
    wait until page contains element    id=MainContent_MainContent_SlotPrefix
    input text  id=MainContent_MainContent_SlotPrefix       ${SlotPrefix}

AddNumberOfDigits
    [Arguments]      ${DigitNumber}
    wait until page contains element    id=MainContent_MainContent_NumberOfDigits
    input text  id=MainContent_MainContent_NumberOfDigits       ${DigitNumber}

AddStartIndexValue
    [Arguments]      ${StartIndex}
    wait until page contains element    id=MainContent_MainContent_StartValue
    input text  id=MainContent_MainContent_StartValue      ${StartIndex}

AddScheme
    [Arguments]      ${SchemeName}      ${RefTime}
    wait until page contains element    id=lbAssignScheme
    click element   id=lbAssignScheme
    sleep   5
    wait until page contains element    id=MainContent_MainContent_ddlSchedule
    click element   id=MainContent_MainContent_ddlSchedule
    sleep   5
    wait until page contains element    //*[@id="MainContent_MainContent_ddlSchedule"]/option[2]
    click element   //*[@id="MainContent_MainContent_ddlSchedule"]/option[2]
    wait until page contains element    id=MainContent_MainContent_txtAliasName
    input text  id=MainContent_MainContent_txtAliasName      ${SchemeName}
    wait until page contains element    id=MainContent_MainContent_AddAlias
    click element   MainContent_MainContent_AddAlias
    sleep   5
    wait until page contains element  xpath=//*[@id="container"]/div/h1
    element should contain  xpath=//*[@id="container"]/div/h1      Success
    Scroll Page to Location     0      2000
    wait until page contains element    id=MainContent_MainContent_ddlScheme
    click element   id=MainContent_MainContent_ddlScheme
    wait until page contains element  //*[@id="MainContent_MainContent_ddlScheme"]/option[2]
    click element   //*[@id="MainContent_MainContent_ddlScheme"]/option[2]
    wait until page contains element    id=MainContent_MainContent_ReferenceTime
    input text  id=MainContent_MainContent_ReferenceTime    ${RefTime}
    Press Key   id=MainContent_MainContent_ReferenceTime   \\09
    sleep   5
    wait until page contains element    id=MainContent_MainContent_btnSaveSlots
    click element   id=MainContent_MainContent_btnSaveSlots

SelectNewStudy
    wait until page contains element    //*[@id="studiesTable"]/tbody/tr[2]/td[1]/div/a
    click element   //*[@id="studiesTable"]/tbody/tr[2]/td[1]/div/a

ClickStudyDesigner
    wait until page contains element     id=studydesigner
    click element    id=studydesigner

SignOffGroup
    [Arguments]      ${SignPass}
    wait until page contains element  id=MainContent_MainContent_ucStudyDesignerModificationAccess_lbSignOff
    click element   id=MainContent_MainContent_ucStudyDesignerModificationAccess_lbSignOff
    sleep   2
    wait until page contains element    id=MainContent_MainContent_ucStudyDesignerModificationAccess_confirmDialog_txtPassword
    input text  id=MainContent_MainContent_ucStudyDesignerModificationAccess_confirmDialog_txtPassword    ${SignPass}
    wait until page contains element  id=MainContent_MainContent_ucStudyDesignerModificationAccess_confirmDialog_btnConfirm
    click element   id=MainContent_MainContent_ucStudyDesignerModificationAccess_confirmDialog_btnConfirm
    sleep   5
    wait until page contains element  xpath=//*[@id="container"]/div/h1
    element should contain  xpath=//*[@id="container"]/div/h1      Success

ReverseSignoff
    [Arguments]      ${RevPass}
    wait until page contains element    id=MainContent_MainContent_ucStudyDesignerModificationAccess_lbReverseSignOff
    click element   id=MainContent_MainContent_ucStudyDesignerModificationAccess_lbReverseSignOff
    wait until page contains element    id=MainContent_MainContent_ucStudyDesignerModificationAccess_confirmDialog_txtPassword
    input text  id=MainContent_MainContent_ucStudyDesignerModificationAccess_confirmDialog_txtPassword    ${RevPass}
    wait until page contains element  id=MainContent_MainContent_ucStudyDesignerModificationAccess_confirmDialog_btnConfirm
    click element   id=MainContent_MainContent_ucStudyDesignerModificationAccess_confirmDialog_btnConfirm
    sleep   5
    wait until page contains element  xpath=//*[@id="container"]/div/h1
    element should contain  xpath=//*[@id="container"]/div/h1      Success



