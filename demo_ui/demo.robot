*** Settings ***
Library   SeleniumLibrary
Test Teardown   Close Browser

*** Variable ***

*** Test Cases ***
ค้นหาข้อมูลคำว่าสอบจาก web ของ IT
    ไปยังหน้าแรกของ IT
    ค้นหาคำว่าสอบ
    ต้องเจอข้อมูลในหน้าแรกจำนวน 10 เรื่อง

*** Keywords ***
ต้องเจอข้อมูลในหน้าแรกจำนวน 10 เรื่อง
    # ${count}=  Get Element Count  xpath://div/div/article
    # Should Be True  ${count} == 11
    Wait Until Page Contains Element   xpath://div/div/article
    Page Should Contain Element   xpath://div/div/article  limit=10

ค้นหาคำว่าสอบ
    Click Element   xpath://div/div[2]/span[1]/a[1]
    Input Text   name:s  สอบ
    Press Keys   None   RETURN

ไปยังหน้าแรกของ IT
    Open Browser  https://www.it.kmitl.ac.th/th/  browser=chrome
    Maximize Browser Window
