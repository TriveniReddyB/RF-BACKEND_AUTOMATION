*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    https://jsonplaceholder.typicode.com

*** Keywords ***

Create API Session
    Create Session    jsonapi    ${BASE_URL}

Get Resource
    [Arguments]    ${endpoint}

    ${response}=    GET On Session
    ...    jsonapi
    ...    ${endpoint}

    RETURN    ${response}

Post Resource
    [Arguments]    ${endpoint}    ${payload}

    ${response}=    POST On Session
    ...    jsonapi
    ...    ${endpoint}
    ...    json=${payload}

    RETURN    ${response}

Put Resource
    [Arguments]    ${endpoint}    ${payload}

    ${response}=    PUT On Session
    ...    jsonapi
    ...    ${endpoint}
    ...    json=${payload}

    RETURN    ${response}

Delete Resource
    [Arguments]    ${endpoint}

    ${response}=    DELETE On Session
    ...    jsonapi
    ...    ${endpoint}

    RETURN    ${response}