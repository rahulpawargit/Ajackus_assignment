*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  https://www.propertycapsule.com/



*** Test Cases ***
#Manual Test Case ID- TC_04
Open_Find_Out _More_Link

        open_browser    ${url}  ${browser}
        maximize browser window
        set selenium implicit wait  20 seconds
        click element     xpath://a[@class='here-link'][.='Find out more']
        sleep   4
        close browser


#Manual Test Case ID- TC_05
Open_request_a_demo

        open_browser    ${url}  ${browser}
        maximize browser window
        set selenium implicit wait  20 seconds
        click element     xpath://a[@class='here-link'][.='request a demo']
        sleep   4
        close browser


#Manual Test Case ID- TC_05
Open_see_yourself
        open_browser    ${url}  ${browser}
        maximize browser window
        set selenium implicit wait  20 seconds
        click element     xpath://a[@class='see-for-yourself']
        sleep   4
        close browser

*** Keywords ***
