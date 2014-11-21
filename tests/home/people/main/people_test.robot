*** Settings ***
Documentation     Test Suite for the PEOPLE Page
Resource          ../../../../keywords/home/people/people_resources.robot
Suite Setup       Open test browser
Suite Teardown    Teardown Browser

*** Test Cases ***

I can navigate to the people page
  [Tags]    people  main
  Given I navigate to the people page
  Then I should see the PEOPLE page

I can see the COMMON ELEMENTS on the HOME page
  [Tags]    people  main
  Given I am on the people page
  Then I should see the top NAV bar
  And I should see the Medullan logo
  And I should see the Footer

I can navigate to the HOME page from the LOGO on the PEOPLE page
  [Tags]    people  main
  Given I am on the people page
  When I navigate to the HOME page using the logo
  Then I should see the HOME page

#   HEADER TESTS
I can access the WORK page from the header on the PEOPLE page
  [Tags]    people  main  header
  Given I am on the people page
  When I navigate to the WORK page using the link in the header
  Then I should see the WORK page

I can access the IDEAS page from the header on the PEOPLE page
  [Tags]    people  main   header
  Given I am on the people page
  When I navigate to the IDEAS page using the link in the header
  Then I should see the IDEAS page

I can access the PEOPLE page from the header on the PEOPLE page
  [Tags]    people  main  header
  Given I am on the people page
  When I navigate to the PEOPLE page using the link in the header
  Then I should see the PEOPLE page

I can access the CAREERS page from the header on the PEOPLE page
  [Tags]    people  main  header
  Given I am on the people page
  When I navigate to the CAREERS page using the link in the header
  Then I should see the CAREERS page

I can access the ABOUT page from the header on the PEOPLE page
  [Tags]    people  main  header
  Given I am on the people page
  When I navigate to the ABOUT page using the link in the header
  Then I should see the ABOUT page

I can access the CONTACT page from the header on the PEOPLE page
  [Tags]    people  main  header
  Given I am on the people page
  When I navigate to the CONTACT page using the link in the header
  Then I should see the CONTACT page

#   FOOTER TESTS
I can access the WORK page from the footer on the PEOPLE page
  [Tags]    people  main  footer
  Given I am on the people page
  When I navigate to the WORK page using the link in the footer
  Then I should see the WORK page

I can access the IDEAS page from the footer on the PEOPLE page
  [Tags]    people  main  footer
  Given I am on the people page
  When I navigate to the IDEAS page using the link in the footer
  Then I should see the IDEAS page

I can access the PEOPLE page from the footer on the PEOPLE page
  [Tags]    people  main  footer
  Given I am on the people page
  When I navigate to the PEOPLE page using the link in the footer
  Then I should see the PEOPLE page

I can access the CAREERS page from the footer on the PEOPLE page
  [Tags]    people  main  footer
  Given I am on the people page
  When I navigate to the CAREERS page using the link in the footer
  Then I should see the CAREERS page

I can access the ABOUT page from the footer on the PEOPLE page
  [Tags]    people  main  footer
  Given I am on the people page
  When I navigate to the ABOUT page using the link in the footer
  Then I should see the ABOUT page

I can access the CONTACT page from the footer on the PEOPLE page
  [Tags]    people  main  footer
  Given I am on the people page
  When I navigate to the CONTACT page using the link in the footer
  Then I should see the CONTACT page
