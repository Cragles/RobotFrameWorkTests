*** Settings ***
Documentation  A test of the login Page of Alphadas
Resource  ../AlphadasResources/AlphadasPages/common.robot
Resource  ../AlphadasResources/AlphadasPages/login.robot
Resource  ../AlphadasResources/AlphadasPages/home.robot
Resource  ../AlphadasResources/AlphadasPages/review.robot
Resource  ../AlphadasResources/AlphadasPages/ctms.robot
Resource  ../AlphadasResources/AlphadasPages/design.robot
Resource  ../AlphadasResources/AlphadasPages/reviewdata.robot
Resource  ../AlphadasResources/AlphadasPages/reporting.robot
Resource  ../AlphadasResources/AlphadasPages/ecrf.robot
Resource  ../AlphadasResources/AlphadasPages/slotmanagement.robot
Resource  ../AlphadasResources/AlphadasPages/manageslots.robot
Resource  ../AlphadasResources/AlphadasPages/volunteerrecruitment.robot
Resource  ../AlphadasResources/AlphadasPages/subjectpayments.robot
Resource  ../AlphadasResources/AlphadasPages/tools.robot
Resource  ../AlphadasResources/AlphadasPages/ctmsadministration.robot
Resource  ../AlphadasResources/AlphadasPages/desadministration.robot
Resource  ../AlphadasResources/AlphadasPages/globalsettings.robot
Resource  ../AlphadasResources/AlphadasPages/password.robot
Resource  ../AlphadasResources/AlphadasPages/usersettings.robot
Resource  ../AlphadasResources/AlphadasPages/resetpassword.robot
Resource  ../AlphadasResources/AlphadasPages/studydesigner.robot

Test Timeout  500 seconds
Test Setup  common.Begin WebTest
Test Teardown  common.EndWebTest


*** Variables ***


*** Test Cases ***

T1 - Disabled User Test
    login.LoginPageBasic    User1034    1234
    login.LoginPageDisabled

T2 - Deleted User Test
    login.LoginPageBasic    User1006    1234
    login.LoginPageDeleted

#T3 - Valid User Test            #does not capture date format.  Does not capture newly created user scenario.
 #   login.LoginPageBasic    9999    9999
 #   sleep   5
 #   home.ValidLogin     9999

#T4 - Password Never Expires     #Q - what is expiry threshold.  Is test valid one?
 #   login.LoginPageBasic    9999    9999
 #   home.Logout
 #   login.LoginPageBasic    9999    9999
  #  home.Logout
 #   login.LoginPageBasic    9999    9999
 #   home.Logout
 #   login.LoginPageBasic    9999    9999
 #   home.Logout
 #   login.LoginPageBasic    9999    9999
  #  home.Logout

#T5+T6 - Max Invalid Login Attempts
  #  login.LoginPageBasic    9999    9999
  #  home.NavigateToCTMS
  #  ctms.NavigateToAdministration
  #  ctmsadministration.NavigateToGlobalSettings
  #  globalsettings.AmendLockoutDown     Lock
  #  login.LoginPageBasic    9999    1234
  #  login.LoginPageBasic    9999    1234
  #  login.LoginPageBasic    9999    1234
 #   login.LoginPageTempDisabled
 #   sleep   10
 #   login.LoginPageBasic    9999    9999
  #  home.NavigateToCTMS
  #  ctms.NavigateToAdministration
  #  ctmsadministration.NavigateToGlobalSettings
  #  globalsettings.AmendLockoutUp     Lock

#T7+T8- Force Password Reset                                         #Test will fail if force password is not preticked against user
 #   login.LoginPageBasic    User1035    A1234                    #Test will fail if password_cant_reuse Last <>0
 #   password.ChangePassword     A1234       B1234       B1234    #Consider can't reuse = 1 and reset fail bubble but would need faker or similar
  #  sleep   5                                                       #Audit Viewer Tests not captured
 #   home.Logout
 #   login.LoginPageBasic        User1035    B1234
 #   home.NavigateToUserSettings
 #   usersettings.ChangePassword
 #   password.ChangePassword     B1234       A1234       A1234
  #  sleep   5
 #   home.Logout

#T9 - Login Without Credentials
  #  login.LoginPageNoCredentials


#T10 - User Name Is Not Case Sensitive
 #   login.LoginPageBasic    USER1037    A1234
 #   sleep   5
  #  home.ValidLogin     User1037

#T11 - PasswordReset                                                     # Audit Viewer Tests Not Captured
 #   login.LoginPageForgotPassword                                       # Active Directory Feature - ever tested?
 #   resetpassword.ResetPassword     User1037                            # Cannot find element for return to login button as last step in test?

#T12 - User Settings
 #   login.LoginPageBasic        User1037    A1234
  #  home.NavigateToUserSettings
 #   usersettings.AmendUserSettings      craig.smith@instem.com      0123456789
  #  home.NavigateToUserSettings
   # usersettings.VerifyUserSettings                                #  need to give some sort to keyword

#T13 - Access Permissions                                            # confidence given but doesn't satisfy test exactly
 #   login.LoginPageBasic    9999    9999
 #   home.NavigateToReview
 #   review.NavigateToCTMS
 #   ctms.NavigateToDesign
  #  design.NavigateToReview
 #   review.NavigateToReviewData
  #  reviewdata.DrillIntoStudy
  #  reviewdata.NavigateToReporting
  #  reporting.ValidatePage
 #   ecrf.NavigateToCTMS
  #  ctms.NavigateToSlotManagement
  #  slotmanagement.DrillIntoStudy
 #   manageslots.ManageSlots
 #   volunteerrecruitment.VolunteerRecruit
 #   subjectpayments.SubjectPayments
 #   tools.Tools
  #  ctmsadministration.BrowsePage
  #  design.QuickBrowse
  #  desadministration.BrowsePage

#T14 - Sort Filter and Copy Study                  #  cannot delete copied study because sql error - locked slots in original  known issue?
 #   login.LoginPageBasic    9999    9999
 #   home.NavigateToDesign
 #   design.NavigateToStudyDesigner
  #  studydesigner.SortStudyDesigner
  #  studydesigner.FilterStudyDesigner
  #  studydesigner.ChangeStudyStatus
  #  studydesigner.CopyStudy
  #  studydesigner.RemoveCopiedStudy

#T15+T16+17+18+19+20 - Create And Delete A New Study Signing Off And Reversing Group Signoff           #Add attachment not covered - use local repository?
  #  login.LoginPageBasic    9999    9999     # Audit viewer not covered         #17+18 - currently happy path wants increasing to cover visit and slot types
  #  home.NavigateToDesign                    # Group geographic location needs thought        #Group data integration settings need thought
 #   design.NavigateToStudyDesigner           # Alphadas Transfer settings need thought - not in worddoc?
 #   studydesigner.CreateANewStudyStudy      CSTEST  1234    This is a Test      ABC     26-Jan-20188    Test Study  Prof    Doctor  Client  Nurse
  #  studydesigner.CreateANewStudyGroup      CSTEST  26-Jan-2018    26-Jan-2018
 #   studydesigner.SignOffGroup      9999
 #   studydesigner.ReverseSignoff    9999
 #   studydesigner.CreateANewStudyVisit      CSTEST      CSTEST      26-Jan-2018
 #   studydesigner.CreateANewStudySlot       5     CS      5     1   CSTEST   00:00
 #   sleep   5
 #   studydesigner.NavigateToStudyDesigner
  #  sleep   5
 #   studydesigner.RemoveNewStudy



