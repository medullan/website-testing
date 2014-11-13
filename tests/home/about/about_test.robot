*** Settings ***
Documentation     Test Suite for the ABOUT Page
Resource          ../../../keywords/home/about/about_resources.robot
Suite Setup       Open test browser
Suite Teardown    Teardown Browser

*** Test Cases ***

I can navigate to the about page
  Given I navigate to the about page
  Then I should see the about page
