*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Browser
    Open Browser To Login Page

*** Keywords ***
Open Browser To Login Page
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].FirefoxOptions()    sys
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage

    Open Browser    https://computing.kku.ac.th    firefox    options=${options}
    Close Browser
