*** Settings ***
Documentation     Test Suite for the WORK Page
Resource          ../../../keywords/home/work/work_resources.robot
Suite Setup       Open test browser
Suite Teardown    Teardown Browser

*** Test Cases ***

I can navigate to the work page
  Given I navigate to the work page
  Then I should see the WORK page

I can see the COMMON ELEMENTS on the WORK page
  Given I am on the work page
  Then I should see the top NAV bar
  And I should see the Medullan logo
  And I should see the Footer

I can navigate to the HOME page from the LOGO on the WORK page
  Given I am on the work page
  When I navigate to the HOME page using the logo
  Then I should see the HOME page

#   HEADER TESTS
I can access the WORK page from the header on the WORK page
  Given I am on the work page
  When I navigate to the WORK page using the link in the header
  Then I should see the WORK page

I can access the IDEAS page from the header on the WORK page
  Given I am on the work page
  When I navigate to the IDEAS page using the link in the header
  Then I should see the IDEAS page

I can access the PEOPLE page from the header on the WORK page
  Given I am on the work page
  When I navigate to the PEOPLE page using the link in the header
  Then I should see the PEOPLE page

I can access the CAREERS page from the header on the WORK page
  Given I am on the work page
  When I navigate to the CAREERS page using the link in the header
  Then I should see the CAREERS page

I can access the ABOUT page from the header on the WORK page
  Given I am on the work page
  When I navigate to the ABOUT page using the link in the header
  Then I should see the ABOUT page

I can access the CONTACT page from the header on the WORK page
  Given I am on the work page
  When I navigate to the CONTACT page using the link in the header
  Then I should see the CONTACT page

#   FOOTER TESTS
I can access the WORK page from the footer on the WORK page
  Given I am on the work page
  When I navigate to the WORK page using the link in the footer
  Then I should see the WORK page

I can access the IDEAS page from the footer on the WORK page
  Given I am on the work page
  When I navigate to the IDEAS page using the link in the footer
  Then I should see the IDEAS page

I can access the PEOPLE page from the footer on the WORK page
  Given I am on the work page
  When I navigate to the PEOPLE page using the link in the footer
  Then I should see the PEOPLE page

I can access the CAREERS page from the footer on the WORK page
  Given I am on the work page
  When I navigate to the CAREERS page using the link in the footer
  Then I should see the CAREERS page

I can access the ABOUT page from the footer on the WORK page
  Given I am on the work page
  When I navigate to the ABOUT page using the link in the footer
  Then I should see the ABOUT page

I can access the CONTACT page from the footer on the WORK page
  Given I am on the work page
  When I navigate to the CONTACT page using the link in the footer
  Then I should see the CONTACT page

I can see the tooltips when I hover over client logo for ABBVIE
  [Tags]    testingalttext
  Given I am on the work page
  When I hover over   ${ABBVIE_ALT_TEXT}
  Then I should see the tooltip for   ${ABBVIE_ALT_TEXT}

I can see the tooltips when I hover over client logo for AETNA
  [Tags]    testing
  Given I am on the work page
  When I hover over   ${AETNA_ALT_TEXT}
  Then I should see the tooltip for   ${AETNA_ALT_TEXT}

I can see the tooltips when I hover over client logo for BCBSA
  [Tags]    testing
  Given I am on the work page
  When I hover over   ${BCBS_ALT_TEXT}
  Then I should see the tooltip for   ${BCBS_ALT_TEXT}

I can see the tooltips when I hover over client logo for FOUNDATION MED
  [Tags]    testing
  Given I am on the work page
  When I hover over   ${FOUNDATION_MED_ALT_TEXT}
  Then I should see the tooltip for   ${FOUNDATION_MED_ALT_TEXT}

I can see the tooltips when I hover over client logo for HUMANA
  [Tags]    testing
  Given I am on the work page
  When I hover over   ${HUMANA_ALT_TEXT}
  Then I should see the tooltip for   ${HUMANA_ALT_TEXT}

I can see the tooltips when I hover over client logo for MEDECISION
  [Tags]    testing
  Given I am on the work page
  When I hover over   ${MEDECISION_ALT_TEXT}
  Then I should see the tooltip for   ${MEDECISION_ALT_TEXT}

I can see the tooltips when I hover over client logo for MGH
  [Tags]    testing
  Given I am on the work page
  When I hover over   ${MGH_ALT_TEXT}
  Then I should see the tooltip for   ${MGH_ALT_TEXT}

I can see the tooltips when I hover over client logo for OPTUM
  [Tags]    testing
  Given I am on the work page
  When I hover over   ${OPTUM_ALT_TEXT}
  Then I should see the tooltip for   ${OPTUM_ALT_TEXT}

I can see the tooltips when I hover over client logo for RED HEALTH
  [Tags]    testing
  Given I am on the work page
  When I hover over   ${RED_HEALTH_ALT_TEXT}
  Then I should see the tooltip for   ${RED_HEALTH_ALT_TEXT}

I can see the tooltips when I hover over client logo for TUFTS
  [Tags]    testing
  Given I am on the work page
  When I hover over   ${TUFTS_ALT_TEXT}
  Then I should see the tooltip for   ${TUFTS_ALT_TEXT}

I can see the tooltips when I hover over client logo for VERIZON
  [Tags]    testing
  Given I am on the work page
  When I hover over   ${VERIZON_ALT_TEXT}
  Then I should see the tooltip for   ${VERIZON_ALT_TEXT}

I can see the tooltips when I hover over client logo for YOU
  [Tags]    ignore
  #   No tooltip for this. Clickable link
  Given I am on the work page
  When I hover over   ${YOU_ALT_TEXT}
  Then I should see the tooltip for   ${YOU_ALT_TEXT}
