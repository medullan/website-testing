*** Settings ***
Documentation     Test Suite for the WORK Page
Resource          ../../../keywords/home/work/work_resources.robot
Suite Setup       Open test browser
Suite Teardown    Teardown Browser

*** Test Cases ***

I can navigate to the work page
  Given I navigate to the work page
  Then I should see the work page
