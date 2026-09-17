*** Settings ***
Documentation    REST CRUD Demo
Resource         ../../resources/keywords/api_keywords.resource

*** Test Cases ***

GET Resource By Id
    Create API Session
    ${response}=    Get Resource    /posts/1
    Status Should Be    200    ${response}
    Log    ${response.json()}

POST Create Post
    Create API Session
    ${payload}=    Create Dictionary    **.    title=RF Test    body=Robot Framework    userId=1
    ${response}=    Post Resource     /posts    ${payload}
    Status Should Be    201    ${response}
    Log    ${response.json()}

PUT Update Post
    Create API Session
    ${payload}=    Create Dictionary    id=1    title=Updated Title    body=Updated Body    userId=1
    ${response}=    Put Resource    /posts/1    ${payload}
    Status Should Be    200    ${response}
    Log    ${response.json()}

DELETE Post
    Create API Session
    ${response}=    Delete Resource    /posts/1
    Status Should Be    200    ${response}