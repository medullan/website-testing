*** Settings ***
Documentation     A resource file for the CONTACT Page
Resource       ../home_resources.robot

*** Variables ***


*** Keywords ***
I navigate to the contact page
  [Documentation]   There is a time out on this page so there may be an initial
  ...   failure, but it will retry for 10 s. If 10s passes and it still fails,
  ...   only then will a failure be recorded
  Go To   ${HOST}${CONTACT_SUFFIX}
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${CONTACT_PAGE_TITLE}

I am on the contact page
  I navigate to the contact page
