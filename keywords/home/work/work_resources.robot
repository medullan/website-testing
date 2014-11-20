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

I am on the work page
  I navigate to the work page

Client Logo Text
  [Arguments]   ${CLIENT_LOGO_ID}

I hover over
  [Arguments]   ${CLIENT_ALT_TEXT}
  Mouse Over   jquery=img[alt="${CLIENT_ALT_TEXT}"]

I should see the tooltip for
  [Arguments]   ${CLIENT_LOGO_ID}
  Element Should Be Visible   jquery=[role="tooltip"] [class="ui-tooltip-content"]
  #  Element Text Should Be      jquery=[role="tooltip"] [class="ui-tooltip-content"]    Client Logo Text    ${CLIENT_LOGO_ID}
  #   Use here to test the contents of the popup text. will need additional variables.
  Capture Page Screenshot   screenshots/home/work/${TEST_NAME}-${SAUCE_CAPABILITIES}_tooltip.png
  Run keyword if  '${APPLITOOLS_KEY}' != ''
  ...   Check Eyes Window     ${TEST_NAME}-${SAUCE_CAPABILITIES}tooltip    False
