*** Settings ***
Library   SeleniumLibrary


*** Variables ***
${username}            <your email address of Postify account>  # Example: abc@gmail.com
${password}            <password of the Postify account>  # 12345678


*** Test Cases ***
Login Test
    Log    Hello
    [Documentation]  Test the login functionality
    [Tags]  login_check
    Open Browser  https://www.postify.ai/login  chrome
    Input Text  email  ${username}
    Input Text  password  ${password}
    Click Button  class=login100-form-btn
    Sleep    3s
    ${element_text}    Get Text    xpath:/html/body/div[6]/div/div/div/div/div/div/div[1]/form/div/h2


    Log    ${element_text}
    Close Browser 
