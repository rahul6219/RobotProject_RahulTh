*** Settings ***
Library    SeleniumLibrary


Suite Setup        Log        I am inside Test Suite Setup 
Suite Teardown     Log        I am inside Test Suite Teardown
Test Setup         Log        I am inside Test Setup
Test Teardown      Log        I am inside Test Teardown


Default Tags            sanity

*** Test Cases ***
MyFirsttest
    [Tags]     smoke
    Log        Hello World...
   
MySecondTest
    Log             I am inside the 2nd test...
    Set Tags        regression1 
    Remove Tags     regression1
MyThirdTest
    Log        I am inside the 3rd test...

MyFourthTest
        Log     This is my 4th test :)

*** Test Cases ***
# MyFirstTest
    # Log    Hello World...    
    
# FirstSeleniumTest
    # Create Webdriver    Chrome              executable path="C:/Users/Rahul/Desktop/Selenium_Browsers_Latest/ChromeDriver/chromedriver.exe"
    # Open Browser        https:google.com    chrome
    # Set Browser Implicit Wait    5
    # Click Button        name=btnK    
    # Input Text          name=q              Automation step by Step    
    # Sleep               2
    # Close Browser  
    # Log     Test Completed
    
# SampleLoginTest
    # [Documentation]    This is a sample login test
    # Open Browser       ${URL}
    # Set Browser Implicit Wait    5
    # LoginKW
    # Click Element      link=Logout    
    # Close Browser    
    # Log                Test Completed 
    # Log                This test was executed by %{username} on %{os}

    

   
     
*** Variables ***
${URL}        https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123
&{LGOINDATA}      username=Admin    password=admin123


*** Keywords ***
LoginKW
    Input Text         id=txtUsername        @{CREDENTIALS}[0]
    Input Text         id=txtPassword        &{LGOINDATA}[password]
    Click Button       id=btnLogin            