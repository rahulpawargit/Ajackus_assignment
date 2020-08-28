*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Download_CSV


#        create webdriver  chrome     executable_path = "E:\Rahul\Testing Docs\Python\chromedriver\chromedriver.exe"

        open_browser    https://finance.yahoo.com/   chrome
        maximize browser window
        set selenium implicit wait  20 seconds
        input text     id:yfin-usr-qry     Fortive corporation
        click element     xpath://button[@id='header-desktop-search-button']
        click element     xpath://span[text()='Historical Data']
        click element     xpath: //span[text()='Download']
        close browser

        open browser       https://accounts.google.com/signin  chrome
        maximize browser window
        set selenium implicit wait  20 seconds
        input text      name:identifier     rahul.pawar.asentech@gmail.com
        click element   xpath://div[@class='VfPpkd-RLmnJb']
        input text      name:password Abcd$123
        click element   xpath://span[@class='VfPpkd-vQzf8d' and contains(text(),'Next')]



*** Keywords ***