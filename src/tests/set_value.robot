*** Settings ***
Resource  resource.robot
Suite Setup  Open Browser With Counter Reset
Suite Teardown  Close Browser

*** Test Cases ***
When a value is entered the counter is set to that value
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  42
    Click  button >> text=Aseta
    Get Text  body  *=  nappia painettu 42 kertaa
