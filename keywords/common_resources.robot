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
${CONTACT_PAGE_TITLE}       Contact. — Medullan.com
${IDEAS_PAGE_TITLE}         Ideas. — Medullan.com
${PEOPLE_PAGE_TITLE}        People. — Medullan.com
${CAREERS_PAGE_TITLE}       Careers. — Medullan.com
${WORK_PAGE_TITLE}          Our Work. — Medullan.com
${TWITTER_TITLE}            Medullan, Inc. (@medullan) | Twitter
${LINKEDIN_TITLE}           Medullan | LinkedIn

*** Keywords ***

#   BEGIN GENERIC KEYWORDS
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
#   END GENERIC KEYWORDS

#   BEGIN APP-SPECIFIC KEYWORDS
I should see the top NAV bar
  Element Should Be Visible   //*[@id="headerNav"]

I should see the Medullan logo
  Element Should Be Visible   //*[@id="siteTitleWrapper"]

I should see the Footer
  Element Should Be Visible   //*[@id="footer"]

#   IMAGE NAVIGATION
I navigate to the HOME page using the logo
  Click Element    jquery=[id="siteTitleWrapper"] [href="/"]
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${HOME_PAGE_TITLE}

I navigate to the Medullan's LinkedIn page using the logo in the footer
  Click Element    jquery=[id="footer"] [href="https://www.linkedin.com/company/132349"]
  Wait Until Keyword Succeeds   10s   1s    Select Window   title=${LINKEDIN_TITLE}

I navigate to the Medullan's Twitter page using the logo in the footer
  Click Element    jquery=[id="footer"] [href="https://twitter.com/medullan"]
  Wait Until Keyword Succeeds   10s   1s    Select Window   title=${TWITTER_TITLE}

#   FOOTER NAVIGATION
I navigate to the WORK page using the link in the footer
  Click Element    jquery=[id="footer"] [id="footer-navigation"] [href="/work"]
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${WORK_PAGE_TITLE}

I navigate to the IDEAS page using the link in the footer
  Click Element    jquery=[id="footer"] [id="footer-navigation"] [href="/ideas"]
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${IDEAS_PAGE_TITLE}

I navigate to the PEOPLE page using the link in the footer
  Click Element    jquery=[id="footer"] [id="footer-navigation"] [href="/people"]
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${PEOPLE_PAGE_TITLE}

I navigate to the ABOUT page using the link in the footer
  Click Element    jquery=[id="footer"] [id="footer-navigation"] [href="/about"]
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${ABOUT_PAGE_TITLE}

I navigate to the CAREERS page using the link in the footer
  Click Element    jquery=[id="footer"] [id="footer-navigation"] [href="/careers"]
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${CAREERS_PAGE_TITLE}

I navigate to the CONTACT page using the link in the footer
  Click Element    jquery=[id="footer"] [id="footer-navigation"] [href="/contact"]
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${CONTACT_PAGE_TITLE}

#   HEADER NAVIGATION
I navigate to the WORK page using the link in the header
  Click Element    jquery=[id="headerNav"] [id="main-navigation"] [href="/work/"]
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${WORK_PAGE_TITLE}

I navigate to the IDEAS page using the link in the header
  Click Element    jquery=[id="headerNav"] [id="main-navigation"] [href="/ideas/"]
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${IDEAS_PAGE_TITLE}

I navigate to the PEOPLE page using the link in the header
  Click Element    jquery=[id="headerNav"] [id="main-navigation"] [href="/people-root/"]
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${PEOPLE_PAGE_TITLE}

I navigate to the CAREERS page using the link in the header
  Mouse Over    jquery=[id="headerNav"] [id="main-navigation"] [href="/people-root/"]
  Click Element    jquery=[id="headerNav"] [id="main-navigation"] [href="/careers/"]
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${CAREERS_PAGE_TITLE}

I navigate to the ABOUT page using the link in the header
  Click Element    jquery=[id="headerNav"] [id="main-navigation"] [href="/about/"]
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${ABOUT_PAGE_TITLE}

I navigate to the CONTACT page using the link in the header
  Click Element    jquery=[id="headerNav"] [id="main-navigation"] [href="/contact/"]
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${CONTACT_PAGE_TITLE}

#   SEEING PAGES
I should see the WORK page
  Title Should Be       ${WORK_PAGE_TITLE}
  Capture Page Screenshot   screenshots/home/work/${TEST_NAME}_work_page.png
  Run keyword if  '${APPLITOOLS_KEY}' != ''
  ...   Check Eyes Window     ${TEST_NAME}_work_page    False

I should see the IDEAS page
  Title Should Be       ${IDEAS_PAGE_TITLE}
  Capture Page Screenshot   screenshots/home/ideas/${TEST_NAME}_ideas_page.png
  Run keyword if  '${APPLITOOLS_KEY}' != ''
  ...   Check Eyes Window     ${TEST_NAME}_ideas_page    False

I should see the PEOPLE page
  Title Should Be       ${PEOPLE_PAGE_TITLE}
  Capture Page Screenshot   screenshots/home/people/${TEST_NAME}_people_page.png
  Run keyword if  '${APPLITOOLS_KEY}' != ''
  ...   Check Eyes Window     ${TEST_NAME}_people_page    False

I should see the CAREERS page
  Title Should Be       ${CAREERS_PAGE_TITLE}
  Capture Page Screenshot   screenshots/home/people/careers/${TEST_NAME}_careers_page.png
  Run keyword if  '${APPLITOOLS_KEY}' != ''
  ...   Check Eyes Window     ${TEST_NAME}_careers_page    False

I should see the ABOUT page
  Title Should Be       ${ABOUT_PAGE_TITLE}
  Capture Page Screenshot   screenshots/home/about/${TEST_NAME}_about_page.png
  Run keyword if  '${APPLITOOLS_KEY}' != ''
  ...   Check Eyes Window     ${TEST_NAME}_about_page    False

I should see the CONTACT page
  Title Should Be       ${CONTACT_PAGE_TITLE}
  Capture Page Screenshot   screenshots/home/contact/${TEST_NAME}_contact_page.png
  Run keyword if  '${APPLITOOLS_KEY}' != ''
  ...   Check Eyes Window     ${TEST_NAME}_contact_page    False

I should see the HOME page
  Title Should Be       ${HOME_PAGE_TITLE}
  Capture Page Screenshot   screenshots/home/${TEST_NAME}_home_page.png
  Run keyword if  '${APPLITOOLS_KEY}' != ''
  ...   Check Eyes Window     ${TEST_NAME}_home_page    False

I should see Medullan's Twitter page in a new tab
  Title Should Be       ${TWITTER_TITLE}
  Capture Page Screenshot   screenshots/external/${TEST_NAME}_twitter.png
  Run keyword if  '${APPLITOOLS_KEY}' != ''
  ...   Check Eyes Window     ${TEST_NAME}_twitter    False

I should see Medullan's LinkedIn page in a new tab
  Title Should Be       ${LINKEDIN_TITLE}
  Capture Page Screenshot   screenshots/external/${TEST_NAME}_linkedin.png
  Run keyword if  '${APPLITOOLS_KEY}' != ''
  ...   Check Eyes Window     ${TEST_NAME}_linkedin    False


#   END APP-SPECIFIC KEYWORDS
