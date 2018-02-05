*** Settings ***
Resource  ../AlphadasPO/subjectpaymentsPage.robot

*** Keywords ***

SubjectPayments
    subjectpaymentsPage.CorrectPage
    subjectpaymentsPage.SelectSubject1
    subjectpaymentsPage.ClickSearch1
    subjectpaymentsPage.SelectGlobalPaymentsView
    subjectpaymentsPage.SelectSubject2
    subjectpaymentsPage.ClickSearch2
    subjectpaymentsPage.BrowseToTools

