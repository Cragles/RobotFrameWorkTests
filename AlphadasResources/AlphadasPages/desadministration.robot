*** Settings ***
Resource  ../AlphadasPO/desadministrationPage.robot

*** Keywords ***

BrowsePage
    desadministrationPage.CorrectPage
    desadministrationPage.ClickEDCServers
    desadministrationPage.ClickLabelPrinterConfiguration
    desadministrationPage.ClickLabelTemplateManagement
    desadministrationPage.ClickNotificationTemplates
    desadministrationPage.ClickSettings
    desadministrationPage.ClickSites
    desadministrationPage.ClickSlotStatuses
    desadministrationPage.ClickStudyTypes

AddAndRemoveEDCServer
    [Arguments]  ${EDCName}     ${EDCHost}      ${EDCUsername}      ${EDCPassword}
    desadministrationPage.ClickEDCServers
    desadministrationPage.ClickEDCNew   
    desadministrationPage.EnterEDCName           ${EDCName}    
    desadministrationPage.EnterEDCHost           ${EDCHost}     
    desadministrationPage.EnterEDCUsername       ${EDCUsername}   
    desadministrationPage.EnterEDCPassword       ${EDCPassword}
    desadministrationPage.SaveEDC
    sleep   5
    desadministrationPage.RemoveEDCServer
    desadministrationPage.ConfirmDeletion
    