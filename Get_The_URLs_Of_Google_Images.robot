*** Settings *** 
Library   SeleniumLibrary
Library   OperatingSystem
*** Variables ***
${BROWSER}    Chrome
${URL}        https://www.google.com/
${IMAGE_LOCATOR}    css:img.rg_i.Q4LuWd
${SAVE_PATH}    image_src.txt
*** Test Cases ***
Get Images Using Selenium
    Open Browser    ${URL}    ${BROWSER}
    Sleep    3s
    Maximize Browser Window
    Sleep    5s
    Input Text    name=q    Google images
    Sleep    5s
    Click Button    name=btnK
    Sleep    3s
    Click Element     class=LC20lb
    Sleep    3s
    Input Text    name=q    falcon
    Sleep    3s
    Click Button    xpath://button[@aria-label='Google Search']
    Sleep    5s
    ${image_elements}=    Get WebElements    ${IMAGE_LOCATOR}
    FOR    ${element}    IN    @{image_elements}
         ${image_source}=    Get Element Attribute    ${element}    src
         Log    Image Source: ${image_source}
         Log To Console    Image Source: ${image_source}
         Append To File    ${SAVE_PATH}    ${image_source}\n
    END