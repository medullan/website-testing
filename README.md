Medullans Automated Website Testing
===========================

This repository contains the robot tests for visual and functional testing of Medullan's website

###    External Documentation
- [Plugin documentation](https://github.com/NaviNet/Robot-AppEyes)
- [Medullan's documentation](https://medullan.atlassian.net/wiki/display/QA/How+to+setup+Ubuntu+box+for+Robot+AppEyes+testing)


#####  Requirements for plugin:
- ``Python 2.7.4`` (Newer versions not tested)
- ``Robot Framework 2.8.5`` (Newer versions not tested)
- ``Selenium2Library 1.5`` (Newer versions not tested)
- ``Eyes-Selenium 2.5`` (Newer versions not tested). Access the downloads [here](https://pypi.python.org/pypi/eyes-selenium/2.5), or use pip install eyes-selenium==2.5.


####    Recommended installation (installs dependencies)
- Please see [Medullan's documentation](https://medullan.atlassian.net/wiki/display/QA/How+to+setup+Ubuntu+box+for+Robot+AppEyes+testing)


##  To run the Robot tests:

######  For Testing on Sauce Labs with Applitools
<pre>
  <code>
    pybot --outputdir robot_test_results --variable HOST:'http://h3ju.squarespace.com/' --variable APPLITOOLS_KEY:'s98X9TqoLDyzhYGaimes7MRXsLeupwG68xPReJ6RPhnU110' --variable APPLITOOLS_APP_NAME:'Medullan' --variable SAUCE_URL:'http://webmaster-medullan:edd0afbf-d682-40a3-b747-6fe384893215@ondemand.saucelabs.com:80/wd/hub' --variable SAUCE_CAPABILITIES:'platform:OS X 10.9,browserName:firefox,version:33' --argumentfile full_suite.txt
  </code>
</pre>

######  For Local Testing without SauceLabs, but with Applitools
<pre>
  <code>
    pybot --outputdir robot_test_results --variable HOST:'http://h3ju.squarespace.com/' --variable APPLITOOLS_KEY:'s98X9TqoLDyzhYGaimes7MRXsLeupwG68xPReJ6RPhnU110' --variable APPLITOOLS_APP_NAME:'Medullan' --argumentfile er_tests.txt
  </code>
</pre>

######  For Local Testing without SauceLabs and without Applitools
<pre>
  <code>
    pybot --outputdir robot_test_results --variable HOST:'http://h3ju.squarespace.com/' --variable BROWSER:'phantomjs' --argumentfile full_suite.txt
  </code>
</pre>


#####    List of OS/browser to test against:    #####

######    MAC     ######
SAUCE_CAPABILITIES:'platform:OS X 10.9,browserName:firefox'
SAUCE_CAPABILITIES:'platform:OS X 10.9,browserName:chrome'
SAUCE_CAPABILITIES:'platform:OS X 10.9,browserName:safari'

######    Windows 8.1     ######
SAUCE_CAPABILITIES:'platform:Windows 8.1,browserName:firefox'
SAUCE_CAPABILITIES:'platform:Windows 8.1,browserName:chrome'
SAUCE_CAPABILITIES:'platform:Windows 8.1,browserName:internet explorer,version:11'

######    Windows 8     ######
SAUCE_CAPABILITIES:'platform:Windows 8,browserName:firefox'
SAUCE_CAPABILITIES:'platform:Windows 8,browserName:chrome'
SAUCE_CAPABILITIES:'platform:Windows 8,browserName:internet explorer,version:10'

######    Windows 7     ######
SAUCE_CAPABILITIES:'platform:Windows 7,browserName:firefox'
SAUCE_CAPABILITIES:'platform:Windows 7,browserName:chrome'
SAUCE_CAPABILITIES:'platform:Windows 7,browserName:internet explorer,version:11'
SAUCE_CAPABILITIES:'platform:Windows 7,browserName:internet explorer,version:10'
SAUCE_CAPABILITIES:'platform:Windows 7,browserName:internet explorer,version:9'
SAUCE_CAPABILITIES:'platform:Windows 7,browserName:internet explorer,version:8'

######    Windows XP     ######
SAUCE_CAPABILITIES:'platform:Windows XP,browserName:firefox'
SAUCE_CAPABILITIES:'platform:Windows XP,browserName:chrome'
SAUCE_CAPABILITIES:'platform:Windows XP,browserName:internet explorer,version:8'
SAUCE_CAPABILITIES:'platform:Windows XP,browserName:internet explorer,version:7'
SAUCE_CAPABILITIES:'platform:Windows XP,browserName:internet explorer,version:6'

######    Linux     ######
SAUCE_CAPABILITIES:'platform:Windows 8,browserName:firefox'
SAUCE_CAPABILITIES:'platform:Windows 8,browserName:chrome'
SAUCE_CAPABILITIES:'platform:Windows 8,browserName:opera'


pybot --outputdir robot_test_results --variable HOST:'http://h3ju.squarespace.com/' --variable SAUCE_URL:'http://webmaster-medullan:edd0afbf-d682-40a3-b747-6fe384893215@ondemand.saucelabs.com:80/wd/hub' --variable SAUCE_CAPABILITIES:'platform:Windows XP,browserName:internet explorer' --argumentfile full_suite.txt


pybot --outputdir robot_test_results -- --variable SAUCE_CAPABILITIES:'platform:linux,browserName:android,deviceName:Google Nexus 7 HD Emulator,device-orientation:portrait' --argumentfile full_suite.txt

#####    List of variables that can be used in the robot command:
- ${HOST} <p>`The site to be tested`
- ${BROWSER}  <p>`The browser to be used, the default is phantomjs if this variable is not set`
- ${SAUCE_URL}  <p>`The remote url to run the tests on`
- ${SAUCE_CAPABILITIES}  <p>`The os, browser, browser version to use on the remote url`
- ${APPITOOLS_KEY}  <p>`The KEY to be used when running visual tests on AppliTools`
- ${APPLITOOLS_APP_NAME}  <p>`The name of the app being tested`
- ${SELENIUM_DELAY}  <p>`The delay between Selenium command, the default is 0 if this variable is not set`
- ${APPLITOOLS_MATCHLEVEL}  <p>`The matchlevel on AppliTools, values are: STRICT, LAYOUT, CONTENT. The default is LAYOUT`
- ${APPLITOOLS_EYESLOG}  <p>`Set True to use and False to not use the eyes-log`
- ${APPLITOOLS_DEBUGLOG}  <p>`Set True to use and False to not use the http-debug-log`




Testing:

MAC
FF
pybot --outputdir robot_test_results --variable HOST:'http://medullan.com' --exclude ignore --argumentfile full_suite.txt

CHROME
pybot --outputdir robot_test_results --variable HOST:'http://medullan.com' --variable APPLITOOLS_KEY:'s98X9TqoLDyzhYGaimes7MRXsLeupwG68xPReJ6RPhnU110' --variable APPLITOOLS_APP_NAME:'Medullan' --variable SAUCE_URL:'http://webmaster-medullan:edd0afbf-d682-40a3-b747-6fe384893215@ondemand.saucelabs.com:80/wd/hub' --variable SAUCE_CAPABILITIES:'platform:OS X 10.9,browserName:chrome' --exclude ignore --argumentfile full_suite.txt

SAFARI
pybot --outputdir robot_test_results --variable HOST:'http://medullan.com' --variable APPLITOOLS_KEY:'s98X9TqoLDyzhYGaimes7MRXsLeupwG68xPReJ6RPhnU110' --variable APPLITOOLS_APP_NAME:'Medullan' --variable SAUCE_URL:'http://webmaster-medullan:edd0afbf-d682-40a3-b747-6fe384893215@ondemand.saucelabs.com:80/wd/hub' --variable SAUCE_CAPABILITIES:'platform:OS X 10.9,browserName:safari' --exclude ignore --argumentfile full_suite.txt


WINDOWS 8.1
FF
pybot --outputdir robot_test_results --variable HOST:'http://medullan.com' --variable APPLITOOLS_KEY:'s98X9TqoLDyzhYGaimes7MRXsLeupwG68xPReJ6RPhnU110' --variable APPLITOOLS_APP_NAME:'Medullan' --variable SAUCE_URL:'http://webmaster-medullan:edd0afbf-d682-40a3-b747-6fe384893215@ondemand.saucelabs.com:80/wd/hub' --variable SAUCE_CAPABILITIES:'platform:Windows 8.1,browserName:firefox' --exclude ignore --argumentfile full_suite.txt

CHROME
pybot --outputdir robot_test_results --variable HOST:'http://medullan.com' --variable APPLITOOLS_KEY:'s98X9TqoLDyzhYGaimes7MRXsLeupwG68xPReJ6RPhnU110' --variable APPLITOOLS_APP_NAME:'Medullan' --variable SAUCE_URL:'http://webmaster-medullan:edd0afbf-d682-40a3-b747-6fe384893215@ondemand.saucelabs.com:80/wd/hub' --variable SAUCE_CAPABILITIES:'platform:Windows 8.1,browserName:chrome' --exclude ignore --argumentfile full_suite.txt

IE
pybot --outputdir robot_test_results --variable HOST:'http://medullan.com' --variable APPLITOOLS_KEY:'s98X9TqoLDyzhYGaimes7MRXsLeupwG68xPReJ6RPhnU110' --variable APPLITOOLS_APP_NAME:'Medullan' --variable SAUCE_URL:'http://webmaster-medullan:edd0afbf-d682-40a3-b747-6fe384893215@ondemand.saucelabs.com:80/wd/hub' --variable SAUCE_CAPABILITIES:'platform:Windows 8.1,browserName:internet explorer,version:11' --exclude ignore --argumentfile full_suite.txt

WINDOWS 8
FF
pybot --outputdir robot_test_results --variable HOST:'http://medullan.com' --variable APPLITOOLS_KEY:'s98X9TqoLDyzhYGaimes7MRXsLeupwG68xPReJ6RPhnU110' --variable APPLITOOLS_APP_NAME:'Medullan' --variable SAUCE_URL:'http://webmaster-medullan:edd0afbf-d682-40a3-b747-6fe384893215@ondemand.saucelabs.com:80/wd/hub' --variable SAUCE_CAPABILITIES:'platform:Windows 8,browserName:firefox' --exclude ignore --argumentfile full_suite.txt

CHROME
pybot --outputdir robot_test_results --variable HOST:'http://medullan.com' --variable APPLITOOLS_KEY:'s98X9TqoLDyzhYGaimes7MRXsLeupwG68xPReJ6RPhnU110' --variable APPLITOOLS_APP_NAME:'Medullan' --variable SAUCE_URL:'http://webmaster-medullan:edd0afbf-d682-40a3-b747-6fe384893215@ondemand.saucelabs.com:80/wd/hub' --variable SAUCE_CAPABILITIES:'platform:Windows 8,browserName:chrome' --exclude ignore --argumentfile full_suite.txt

IE
pybot --outputdir robot_test_results --variable HOST:'http://medullan.com' --variable APPLITOOLS_KEY:'s98X9TqoLDyzhYGaimes7MRXsLeupwG68xPReJ6RPhnU110' --variable APPLITOOLS_APP_NAME:'Medullan' --variable SAUCE_URL:'http://webmaster-medullan:edd0afbf-d682-40a3-b747-6fe384893215@ondemand.saucelabs.com:80/wd/hub' --variable SAUCE_CAPABILITIES:'platform:Windows 8,browserName:internet explorer,version:10' --exclude ignore --argumentfile full_suite.txt
