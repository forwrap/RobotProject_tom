*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log    I am inside Test suite Setup
Suite Teardown    Log    I am inside Test Suite Teardown

Test Setup    Log    I am in side Test SEtup nn
Test Teardown    Log    I am in side test teardown nn

Default Tags    sanity

*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log    Hello World...
    
MySecondTest    
    Log    Tom2
    Set Tags    regression1

MyThirdTest    
    Log    Tom3

#FirstSeleniumTest
 #   Open Browser    https://google.com    chrome
  #  Set Browser Implicit Wait    5
   # Input Text      name = q              Automation step by step
  #  Press Keys      name=q                ENTER
    # Click Button    name=btnK
   # Sleep    2    
  #  Close Browser
   # Log    Test Tom Tom Completed
    
    
#SampleLoginTest
 #   [Documentation]     This is a sample login test
  #  Open Browser        ${URL}     chrome
   # Set Browser Implicit Wait    5
   # LogingKW
   # sleep    2
   # Click Element    link = logout       
   # Log                Test completed again again 
   # Log                This test was executed by %{username} on %{os} 
    


*** Variables ***
${URL}    https://borntodev.com/robotf/
@{CREDENTIALS}    demo    mode
&{LOGINDATA}    username=demo    password=mode

*** Keywords ***
LogingKW
    Input Text            id = username_field    @{CREDENTIALS}[0]
    Input Password        id = password_field    &{LOGINDATA}[password]
    Click Button          id=login_button   
    
    



    
    