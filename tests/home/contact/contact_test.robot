*** Settings ***
Documentation     Test Suite for the CONTACT Page
Resource          ../../../keywords/home/contact/contact_resources.robot
Suite Setup       Open test browser
Suite Teardown    Teardown Browser

*** Test Cases ***

I can navigate to the contact page
  Given I navigate to the contact page
  Then I should see the contact page
