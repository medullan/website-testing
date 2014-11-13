*** Settings ***
Documentation     A resource file for the IDEAS Page
Resource       ../home_resources.robot

*** Variables ***


*** Keywords ***
I navigate to the ideas page
  [Documentation]   There is a time out on this page so there may be an initial
  ...   failure, but it will retry for 10 s. If 10s passes and it still fails,
  ...   only then will a failure be recorded
  Go To   ${HOST}${IDEAS_SUFFIX}
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${IDEAS_PAGE_TITLE}

I should see the ideas page
  Title Should Be       ${IDEAS_PAGE_TITLE}
  Capture Page Screenshot   screenshots/home/ideas/ideas_page.png
  Run keyword if  '${APPLITOOLS_KEY}' != ''
  ...   Check Eyes Window     ideas_page    False
