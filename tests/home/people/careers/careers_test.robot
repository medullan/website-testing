*** Settings ***
Documentation     Test Suite for the CAREERS Page
Resource          ../../../../keywords/home/people/careers/careers_resources.robot
Suite Setup       Open test browser
Suite Teardown    Teardown Browser

*** Test Cases ***

I can navigate to the careers page
  Given I navigate to the careers page
  Then I should see the careers page
