*** Settings ***
Documentation     A resource file for the ABOUT Page
Resource       ../home_resources.robot

*** Variables ***


*** Keywords ***
I navigate to the about page
  [Documentation]   There is a time out on this page so there may be an initial
  ...   failure, but it will retry for 10 s. If 10s passes and it still fails,
  ...   only then will a failure be recorded
  Go To   ${HOST}${ABOUT_SUFFIX}
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${ABOUT_PAGE_TITLE}

I am on the about page
  I navigate to the about page
