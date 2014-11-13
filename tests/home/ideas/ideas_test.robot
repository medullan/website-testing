*** Settings ***
Documentation     Test Suite for the IDEAS Page
Resource          ../../../keywords/home/ideas/ideas_resources.robot
Suite Setup       Open test browser
Suite Teardown    Teardown Browser

*** Test Cases ***

I can navigate to the ideas page
  Given I navigate to the ideas page
  Then I should see the ideas page
