*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Browser
    Open Browser To Login Page

*** Keywords ***
Open Browser To Login Page
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].FirefoxOptions()    sys
    Call Method    ${options}    add_argument    --headless

    Create Webdriver    Firefox    options=${options}
    Go To    https://computing.kku.ac.th
