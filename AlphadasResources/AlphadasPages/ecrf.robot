*** Settings ***
Resource  ../AlphadasPO/ecrfPage.robot

*** Keywords ***

NavigateToCTMS
    ecrfPage.CorrectPage
    ecrfPage.ClickEvents
    ecrfPage.ClickQuestions
    ecrfPage.ClickData
    ecrfPage.ClickReviewLevels
    ecrfPage.ClickCTMS
