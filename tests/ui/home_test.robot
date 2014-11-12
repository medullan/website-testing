*** Settings ***
Documentation     Test Suite for the Home Page
Resource          ../../keywords/ui/home_resources.robot
Suite Setup       Open test browser
Suite Teardown    Teardown Browser

*** Test Cases ***



I can navigate to the home page
  Given I navigate to the home page
  Then I should see the home page
