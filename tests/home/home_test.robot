*** Settings ***
Documentation     Test Suite for the Home Page
Resource          ../../keywords/home/home_resources.robot
Suite Setup       Open test browser
Suite Teardown    Teardown Browser

*** Test Cases ***

I can see the home page
  Given I navigate to the home page
  Then I should see the HOME page
  And I should see the Header video playing
  And I should see the 3 most recent Ideas Summary

I can go to the WORK page when I click the LEARN MORE link on the HOME page
  Given I am on the home page
  When I click the LEARN MORE link on the HOME page
  Then I should see the WORK page

I can go to the WORK page when I click the View Our Work link on the HOME page
  Given I am on the home page
  When I click the View Our Work link on the HOME page
  Then I should see the WORK page

I can go to the IDEAS page when I click the View More link in the Ideas section on the HOME page
  Given I am on the home page
  When I click the View More link on the HOME page
  Then I should see the IDEAS page

I can go to the CONTACT page when I click the Get in Touch box on the HOME page
  [Tags]    ignore
  Given I am on the home page
  When I click the Get in Touch box on the HOME page
  Then I should see the CONTACT page

I can open the left most-recent Ideas Summary links
  Given I am on the home page
  When I click on the left image of the Ideas Summary
  Then I should see the left blog page open

I can open the middle most-recent Ideas Summary links
  Given I am on the home page
  When I click on the middle image of the Ideas Summary
  Then I should see the middle blog page open

I can open the right most-recent Ideas Summary links
  Given I am on the home page
  When I click on the right image of the Ideas Summary
  Then I should see the right blog page open

#   COMMON TESTS
I can see the COMMON ELEMENTS on the HOME page
  Given I am on the home page
  Then I should see the top NAV bar
  And I should see the Medullan logo
  And I should see the Footer

  #   IMAGE TESTS
I can navigate to the HOME page from the LOGO on the HOME page
  Given I am on the home page
  When I navigate to the HOME page using the logo
  Then I should see the HOME page

I can navigate to Medullan's Twitter account from the image on the footer
  [Tags]    external
  Given I am on the home page
  When I navigate to the Medullan's Twitter page using the logo in the footer
  Then I should see Medullan's Twitter page in a new tab

I can navigate to Medullan's LinkedIn account from the image on the footer
  [Tags]    external
  Given I am on the home page
  When I navigate to the Medullan's LinkedIn page using the logo in the footer
  Then I should see Medullan's LinkedIn page in a new tab

  #   HEADER TESTS
I can access the WORK page from the header on the HOME page
  Given I am on the home page
  When I navigate to the WORK page using the link in the header
  Then I should see the WORK page

I can access the IDEAS page from the header on the HOME page
  Given I am on the home page
  When I navigate to the IDEAS page using the link in the header
  Then I should see the IDEAS page

I can access the PEOPLE page from the header on the HOME page
  Given I am on the home page
  When I navigate to the PEOPLE page using the link in the header
  Then I should see the PEOPLE page

I can access the CAREERS page from the header on the HOME page
  Given I am on the home page
  When I navigate to the CAREERS page using the link in the header
  Then I should see the CAREERS page

I can access the ABOUT page from the header on the HOME page
  Given I am on the home page
  When I navigate to the ABOUT page using the link in the header
  Then I should see the ABOUT page

I can access the CONTACT page from the header on the HOME page
  Given I am on the home page
  When I navigate to the CONTACT page using the link in the header
  Then I should see the CONTACT page

  #   FOOTER TESTS
I can access the WORK page from the footer on the HOME page
  Given I am on the home page
  When I navigate to the WORK page using the link in the footer
  Then I should see the WORK page

I can access the IDEAS page from the footer on the HOME page
  Given I am on the home page
  When I navigate to the IDEAS page using the link in the footer
  Then I should see the IDEAS page

I can access the PEOPLE page from the footer on the HOME page
  Given I am on the home page
  When I navigate to the PEOPLE page using the link in the footer
  Then I should see the PEOPLE page

I can access the CAREERS page from the footer on the HOME page
  Given I am on the home page
  When I navigate to the CAREERS page using the link in the footer
  Then I should see the CAREERS page

I can access the ABOUT page from the footer on the HOME page
  Given I am on the home page
  When I navigate to the ABOUT page using the link in the footer
  Then I should see the ABOUT page

I can access the CONTACT page from the footer on the HOME page
  Given I am on the home page
  When I navigate to the CONTACT page using the link in the footer
  Then I should see the CONTACT page
