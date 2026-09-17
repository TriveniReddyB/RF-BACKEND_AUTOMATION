*** Settings ***
Library    DatabaseLibrary


*** Keywords ***
Connect Oracle Database
    # Connect To Database
    # ...    oracledb
    # ...    db_name=${DB_SERVICE}
    # ...    db_user=${DB_USER}
    # ...    db_password=${DB_PASSWORD}
    # ...    db_host=${DB_HOST}
    # ...    db_port=${DB_PORT}
    Log    DB lirary detected success!

Disconnect Oracle Database
    Disconnect From Database

Execute Query
    [Arguments]    ${sql}
    ${result}=    Query    ${sql}
    RETURN    ${result}