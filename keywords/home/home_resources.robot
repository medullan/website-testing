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

I should see the Header video playing
  Element Should Be Visible   //*[@id="video_background"]

I should see the 3 most recent Ideas Summary
  Element Should Be Visible   jquery=[id$="${IDEAS_SUMMARY_ID}"]
  Element Should Be Visible   jquery=[id$="${IDEAS_SUMMARY_LEFT}"]
  Element Should Be Visible   jquery=[id$="${IDEAS_SUMMARY_MID}"]
  Element Should Be Visible   jquery=[id$="${IDEAS_SUMMARY_RIGHT}"]

I click the LEARN MORE link on the HOME page
  Click Link    LEARN MORE
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${WORK_PAGE_TITLE}

I click the View Our Work link on the HOME page
  Click Link    VIEW OUR WORK
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${WORK_PAGE_TITLE}

I click the Get in Touch box on the HOME page
  Click Image  ${GET_IN_TOUCH_ALT_TEXT}
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${CONTACT_PAGE_TITLE}

I click the View More link on the HOME page
  Click Link    VIEW MORE >
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${IDEAS_PAGE_TITLE}

I click on the left image of the Ideas Summary
  ${get_item_summary_page} =
    ...   Get Element Attribute    jquery=[id$="${IDEAS_SUMMARY_LEFT}"] a@data-title
  Set Test Variable   ${ITEM_SUMMARY_PAGE}    ${get_item_summary_page}
  Click Element   jquery=[id$="${IDEAS_SUMMARY_LEFT}"] a
  Wait Until Keyword Succeeds   20s   1s    Element Text Should Be    //*[@class="blog-title"]   ${ITEM_SUMMARY_PAGE}

I click on the middle image of the Ideas Summary
  ${get_item_summary_page} =
    ...   Get Element Attribute    jquery=[id$="${IDEAS_SUMMARY_MID}"] a@data-title
  Set Test Variable   ${ITEM_SUMMARY_PAGE}    ${get_item_summary_page}
  Click Element   jquery=[id$="${IDEAS_SUMMARY_MID}"] a
  Wait Until Keyword Succeeds   20s   1s    Element Text Should Be    //*[@class="blog-title"]   ${ITEM_SUMMARY_PAGE}

I click on the right image of the Ideas Summary
  ${get_item_summary_page} =
  ...   Get Element Attribute    jquery=[id$="${IDEAS_SUMMARY_RIGHT}"] a@data-title
  Set Test Variable   ${ITEM_SUMMARY_PAGE}    ${get_item_summary_page}
  Click Element   jquery=[id$="${IDEAS_SUMMARY_RIGHT}"] a
  Wait Until Keyword Succeeds   20s   1s    Element Text Should Be    //*[@class="blog-title"]   ${ITEM_SUMMARY_PAGE}

I should see the left blog page open
  Wait Until Keyword Succeeds   20s   1s    Element Text Should Be    //*[@class="blog-title"]   ${ITEM_SUMMARY_PAGE}
  Capture Page Screenshot   screenshots/home/${TEST_NAME}-${SAUCE_CAPABILITIES}_left_blog_page.png
  Run keyword if  '${APPLITOOLS_KEY}' != ''
  ...   Check Eyes Window     ${TEST_NAME}-${SAUCE_CAPABILITIES}_left_blog_page    False

I should see the middle blog page open
  Wait Until Keyword Succeeds   20s   1s    Element Text Should Be    //*[@class="blog-title"]   ${ITEM_SUMMARY_PAGE}
  Capture Page Screenshot   screenshots/home/${TEST_NAME}-${SAUCE_CAPABILITIES}_middle_blog_page.png
  Run keyword if  '${APPLITOOLS_KEY}' != ''
  ...   Check Eyes Window     ${TEST_NAME}-${SAUCE_CAPABILITIES}_middle_blog_page    False

I should see the right blog page open
  Wait Until Keyword Succeeds   20s   1s    Element Text Should Be    //*[@class="blog-title"]   ${ITEM_SUMMARY_PAGE}
  Capture Page Screenshot   screenshots/home/${TEST_NAME}-${SAUCE_CAPABILITIES}_right_blog_page.png
  Run keyword if  '${APPLITOOLS_KEY}' != ''
  ...   Check Eyes Window     ${TEST_NAME}-${SAUCE_CAPABILITIES}_right_blog_page    False
