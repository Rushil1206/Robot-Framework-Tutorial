*** Settings ***
Documentation    Simple Calculator Test
Library          OperatingSystem
Library          Collections


*** Test Cases ***
Addition Test
   [Documentation]    Test the addition operation of the calculator
   ${expression}    Set Variable    2 + 3
   ${result}    Evaluate    ${expression}
   Should Be Equal As Numbers    ${result}    5


Subtraction Test
   [Documentation]    Test the subtraction operation of the calculator
   ${expression}    Set Variable    5 - 2
   ${result}    Evaluate    ${expression}
   Should Be Equal As Numbers    ${result}    3


Multiplication Test
   [Documentation]    Test the multiplication operation of the calculator
   ${expression}    Set Variable    4 * 3
   ${result}    Evaluate    ${expression}
   Should Be Equal As Numbers    ${result}    12


Division Test
   [Documentation]  Test the division operation of the calculator
   ${expression}   Set Variable    25 / 5
   ${result}    Evaluate    ${expression}
   Should Be Equal As Numbers   ${result}    5


Module Test
   [Documentation]  Test the Module operation of the calculator
   ${expression}   Set Variable    50 % 5
   ${result}    Evaluate    ${expression}
   Should Be Equal As Numbers    ${result}    0