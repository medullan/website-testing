*** Settings ***
Documentation     Test Suite for the WORK Page
Resource          ../../../keywords/home/work/work_resources.robot
Suite Setup       Open test browser
Suite Teardown    Teardown Browser

*** Test Cases ***

I can navigate to the work page
  Given I navigate to the work page
  Then I should see the WORK page

I can see the COMMON ELEMENTS on the WORK page
  Given I am on the work page
  Then I should see the top NAV bar
  And I should see the Medullan logo
  And I should see the Footer

I can navigate to the HOME page from the LOGO on the WORK page
  Given I am on the work page
  When I navigate to the HOME page using the logo
  Then I should see the HOME page

#   HEADER TESTS
I can access the WORK page from the header on the WORK page
  Given I am on the work page
  When I navigate to the WORK page using the link in the header
  Then I should see the WORK page

I can access the IDEAS page from the header on the WORK page
  Given I am on the work page
  When I navigate to the IDEAS page using the link in the header
  Then I should see the IDEAS page

I can access the PEOPLE page from the header on the WORK page
  Given I am on the work page
  When I navigate to the PEOPLE page using the link in the header
  Then I should see the PEOPLE page

I can access the CAREERS page from the header on the WORK page
  Given I am on the work page
  When I navigate to the CAREERS page using the link in the header
  Then I should see the CAREERS page

I can access the ABOUT page from the header on the WORK page
  Given I am on the work page
  When I navigate to the ABOUT page using the link in the header
  Then I should see the ABOUT page

I can access the CONTACT page from the header on the WORK page
  Given I am on the work page
  When I navigate to the CONTACT page using the link in the header
  Then I should see the CONTACT page

#   FOOTER TESTS
I can access the WORK page from the footer on the WORK page
  Given I am on the work page
  When I navigate to the WORK page using the link in the footer
  Then I should see the WORK page

I can access the IDEAS page from the footer on the WORK page
  Given I am on the work page
  When I navigate to the IDEAS page using the link in the footer
  Then I should see the IDEAS page

I can access the PEOPLE page from the footer on the WORK page
  Given I am on the work page
  When I navigate to the PEOPLE page using the link in the footer
  Then I should see the PEOPLE page

I can access the CAREERS page from the footer on the WORK page
  Given I am on the work page
  When I navigate to the CAREERS page using the link in the footer
  Then I should see the CAREERS page

I can access the ABOUT page from the footer on the WORK page
  Given I am on the work page
  When I navigate to the ABOUT page using the link in the footer
  Then I should see the ABOUT page

I can access the CONTACT page from the footer on the WORK page
  Given I am on the work page
  When I navigate to the CONTACT page using the link in the footer
  Then I should see the CONTACT page

I can see the tooltips when I hover over thingies
  [Tags]    not-working
  Given I am on the work page
  When Mouse Over   jquery=[id$="${ABBVIE_LOGO_ID}"]
  Then Element Should Be Visible    jquery=[role="tooltip"] [class="ui-tooltip-content"]

I can see the tooltips when I hover over thingies
  [Tags]    not-working
  Given I am on the work page
  When Mouse Over   jquery=[id$="_509"]
  Then Element Should Be Visible    jquery=[role="tooltip"] [class="ui-tooltip-content"]

I can see the tooltips when I hover over thingies
  [Tags]    not-working
  Given I am on the work page
  When Mouse Over   jquery=[id$="_508"]
  Then Element Should Be Visible    jquery=[role="tooltip"] [class="ui-tooltip-content"]

I can see the tooltips when I hover over thingies
  [Tags]    not-working
  Given I am on the work page
  When Mouse Over   jquery=[id$="_507"]
  Then Element Should Be Visible    jquery=[role="tooltip"] [class="ui-tooltip-content"]

I can see the tooltips when I hover over thingies
  [Tags]    not-working
  Given I am on the work page
  When Mouse Over   jquery=[id$="_506"]
  Then Element Should Be Visible    jquery=[role="tooltip"] [class="ui-tooltip-content"]

I can see the tooltips when I hover over thingies
  [Tags]    not-working
  Given I am on the work page
  When Mouse Over   jquery=[id$="_506"] img
  Then Element Should Be Visible    jquery=[role="tooltip"] [class="ui-tooltip-content"]
