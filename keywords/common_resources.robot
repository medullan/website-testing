*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Variables         libs/variables.py
Variables         libs/app_variables.py
Library           Selenium2Library
Library           Collections
Library           SauceLabs
Library           RobotAppEyes


*** Variables ***
${TEST_NAME}
${TEST_TAGS}
${TEST_STATUS}

#       These Variables are used here to bypass the UTF-8 encoding issue
#       with the EM dashes in the app_variables.py

${HOME_PAGE_TITLE}          Medullan.com

${ABOUT_PAGE_TITLE}         About Us. — Medullan.com
${ABOUT_SUFFIX}             /about

${CONTACT_PAGE_TITLE}       Contact. — Medullan.com
${CONTACT_SUFFIX}           /contact

${IDEAS_PAGE_TITLE}         Ideas. — Medullan.com
${IDEAS_SUFFIX}             /ideas

${PEOPLE_PAGE_TITLE}        People. — Medullan.com
${PEOPLE_SUFFIX}            /people

${CAREERS_PAGE_TITLE}       Careers. — Medullan.com
${CAREERS_SUFFIX}           /careers

${WORK_PAGE_TITLE}          Our Work. — Medullan.com
${WORK_SUFFIX}              /work


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
    Run Keyword If Test Failed    Capture Screenshot    failed_tests/${TEST_NAME}.png
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
