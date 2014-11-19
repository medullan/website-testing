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
  #   NOT FUNCTIONING YET

I click the View More link on the HOME page
  Click Link    VIEW MORE >
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${IDEAS_PAGE_TITLE}

I click on the left image of the Ideas Summary
  Click Element   jquery=[id$="${IDEAS_SUMMARY_LEFT}" a:eq(1)]
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${WORK_PAGE_TITLE}

I click on the middle image of the Ideas Summary
  Click Element   jquery=[id$="${IDEAS_SUMMARY_MID}"]
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${WORK_PAGE_TITLE}

I click on the right image of the Ideas Summary
  Click Element   jquery=[id$="${IDEAS_SUMMARY_RIGHT}"]
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${WORK_PAGE_TITLE}

I should see the page open
  [Arguments]   ${ITEM_SUMMARY_PAGE}
  Wait Until Keyword Succeeds   20s   1s    Title Should Be   ${ITEM_SUMMARY_PAGE}
