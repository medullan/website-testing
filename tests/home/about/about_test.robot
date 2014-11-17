*** Settings ***
Documentation     Test Suite for the ABOUT Page
Resource          ../../../keywords/home/about/about_resources.robot
Suite Setup       Open test browser
Suite Teardown    Teardown Browser

*** Test Cases ***

I can navigate to the about page
  Given I navigate to the about page
  Then I should see the ABOUT page

I can see the COMMON ELEMENTS on the ABOUT page
  Given I am on the about page
  Then I should see the top NAV bar
  And I should see the Medullan logo
  And I should see the Footer

I can navigate to the HOME page from the LOGO on the ABOUT page
  Given I am on the about page
  When I navigate to the HOME page using the logo
  Then I should see the HOME page

#   HEADER TESTS
I can access the WORK page from the header on the ABOUT page
  Given I am on the about page
  When I navigate to the WORK page using the link in the header
  Then I should see the WORK page

I can access the IDEAS page from the header on the ABOUT page
  Given I am on the about page
  When I navigate to the IDEAS page using the link in the header
  Then I should see the IDEAS page

I can access the PEOPLE page from the header on the ABOUT page
  Given I am on the about page
  When I navigate to the PEOPLE page using the link in the header
  Then I should see the PEOPLE page

I can access the CAREERS page from the header on the ABOUT page
  Given I am on the about page
  When I navigate to the CAREERS page using the link in the header
  Then I should see the CAREERS page

I can access the ABOUT page from the header on the ABOUT page
  Given I am on the about page
  When I navigate to the ABOUT page using the link in the header
  Then I should see the ABOUT page

I can access the CONTACT page from the header on the ABOUT page
  Given I am on the about page
  When I navigate to the CONTACT page using the link in the header
  Then I should see the CONTACT page

#   FOOTER TESTS
I can access the WORK page from the footer on the ABOUT page
  Given I am on the about page
  When I navigate to the WORK page using the link in the footer
  Then I should see the WORK page

I can access the IDEAS page from the footer on the ABOUT page
  Given I am on the about page
  When I navigate to the IDEAS page using the link in the footer
  Then I should see the IDEAS page

I can access the PEOPLE page from the footer on the ABOUT page
  Given I am on the about page
  When I navigate to the PEOPLE page using the link in the footer
  Then I should see the PEOPLE page

I can access the CAREERS page from the footer on the ABOUT page
  Given I am on the about page
  When I navigate to the CAREERS page using the link in the footer
  Then I should see the CAREERS page

I can access the ABOUT page from the footer on the ABOUT page
  Given I am on the about page
  When I navigate to the ABOUT page using the link in the footer
  Then I should see the ABOUT page

I can access the CONTACT page from the footer on the ABOUT page
  Given I am on the about page
  When I navigate to the CONTACT page using the link in the footer
  Then I should see the CONTACT page
