*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Variables         libs/variables.py
Library           Selenium2Library
Library           Collections
Library           SauceLabs
Library           RobotAppEyes


*** Variables ***
${TEST_NAME}
${TEST_TAGS}
${TEST_STATUS}

*** Keywords ***
Open test browser
    [Documentation]    Open Browser ${BROWSER} to ${HOST} for testing ${SUITE_NAME}
    Run keyword if  '${SAUCE_URL}' != ''
    ...   Open Browser    ${HOST}
    ...   remote_url=${SAUCE_URL}
    ...   desired_capabilities=${SAUCE_CAPABILITIES}
    Run keyword if  '${SAUCE_URL}' == ''
    ...   Open Browser    ${HOST}
    ...   browser=${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${SELENIUM_DELAY}
    Run keyword if  '${APPLITOOLS_KEY}' != ''
    ...   Open Eyes Session
    ...     url=${HOST}
    ...     appname=${APPLITOOLS_APP_NAME}
    ...     testname=${SUITE_NAME}
    ...     apikey=${APPLITOOLS_KEY}
    ...     matchlevel=${APPLITOOLS_MATCHLEVEL}
    ...     includeEyesLog=${APPLITOOLS_EYESLOG}
    ...     httpDebugLog=${APPLITOOLS_DEBUGLOG}

Teardown Take Failure Snapshot
    Run Keyword If Test Failed    Capture Screenshot
    Run keyword if  '${SAUCE_URL}' != ''
    ...   Report Sauce status
    ...     ${SUITE_NAME} | ${TEST_NAME}
    ...     ${TEST_STATUS}  ${TEST_TAGS}  ${SAUCE_URL}
    Run keyword if  '${APPLITOOLS_KEY}' != ''
    ...   Run Keyword And Continue On Failure   Close Eyes Session
    Close all browsers

Teardown Browser
    Run keyword if  '${SAUCE_URL}' != ''
    ...   Report Sauce status
    ...     ${SUITE_NAME} | ${TEST_NAME}
    ...     ${TEST_STATUS}  ${TEST_TAGS}  ${SAUCE_URL}
    Run keyword if  '${APPLITOOLS_KEY}' != ''
    ...   Run Keyword And Continue On Failure   Close Eyes Session
    Close all browsers

Go to Host Page
  Go To   ${HOST}
