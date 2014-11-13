*** Settings ***
Documentation     Test Suite for the PEOPLE Page
Resource          ../../../keywords/home/people/people_resources.robot
Suite Setup       Open test browser
Suite Teardown    Teardown Browser

*** Test Cases ***

I can navigate to the people page
  Given I navigate to the people page
  Then I should see the people page
