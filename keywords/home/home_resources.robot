*** Settings ***
Documentation     A resource file for the HOME Page
Resource       ../common_resources.robot

*** Variables ***


*** Keywords ***
I navigate to the home page
  [Documentation]   There is a time out on this page so there may be an initial
  ...   failure, but it will retry for 10 s. If 10s passes and it still fails,
  ...   only then will a failure be recorded
  Go To   ${HOST}
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${HOME_PAGE_TITLE}

I am on the home page
  I navigate to the home page
