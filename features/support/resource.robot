*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
Library           SeleniumLibrary
Library           OperatingSystem

*** Variables ***
${SERVER}         www.saucedemo.com
${BROWSER}        Firefox
${DELAY}          0
${LOGIN URL}      https://${SERVER}/
${WELCOME URL}    https://${SERVER}/inventory.html
