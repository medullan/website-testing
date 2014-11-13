*** Settings ***
Documentation     A resource file for the PEOPLE Page
Resource       ../home_resources.robot

*** Variables ***


*** Keywords ***
I navigate to the people page
  [Documentation]   There is a time out on this page so there may be an initial
  ...   failure, but it will retry for 10 s. If 10s passes and it still fails,
  ...   only then will a failure be recorded
  Go To   ${HOST}${PEOPLE_SUFFIX}
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${PEOPLE_PAGE_TITLE}

I should see the people page
  Title Should Be       ${PEOPLE_PAGE_TITLE}
  Capture Page Screenshot   screenshots/home/people/people_page.png
  Run keyword if  '${APPLITOOLS_KEY}' != ''
  ...   Check Eyes Window     people_page    False
