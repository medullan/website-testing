*** Settings ***
Documentation     A resource file for the WORK Page
Resource       ../home_resources.robot

*** Variables ***

*** Keywords ***
I navigate to the work page
  [Documentation]   There is a time out on this page so there may be an initial
  ...   failure, but it will retry for 10 s. If 10s passes and it still fails,
  ...   only then will a failure be recorded
  Go To   ${HOST}${WORK_SUFFIX}
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${WORK_PAGE_TITLE}

I should see the work page
  Title Should Be       ${WORK_PAGE_TITLE}
  Capture Page Screenshot   screenshots/home/work/work_page.png
  Run keyword if  '${APPLITOOLS_KEY}' != ''
  ...   Check Eyes Window     work_page    False
