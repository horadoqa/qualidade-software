*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem
Library    String
Library    Collections

*** Variables ***
${DB_NAME}      horadoqa-postgresql
${DB_USER}      horadoqa
${DB_PASSWORD}  1q2w3e4r
${DB_HOST}      host.docker.internal
${DB_PORT}      5432
${CSV_FILE}     ${CURDIR}/pessoas.csv
${TABLE_NAME}   pessoa7

*** Keywords ***
Criar Tabela
    Connect To Database    psycopg2    ${DB_NAME}    ${DB_USER}    ${DB_PASSWORD}    ${DB_HOST}    ${DB_PORT}

    ${sql}=    Set Variable    CREATE TABLE IF NOT EXISTS ${TABLE_NAME} (id SERIAL PRIMARY KEY, nome VARCHAR(255), data_nascimento DATE, sexo VARCHAR(10), estado_civil VARCHAR(20), naturalidade VARCHAR(100), nacionalidade VARCHAR(100))

    Execute Sql String    ${sql}

     Disconnect From Database


Inserir Dados
    Connect To Database    psycopg2    ${DB_NAME}    ${DB_USER}    ${DB_PASSWORD}    ${DB_HOST}    ${DB_PORT}

    ${content}=    Get File    ${CSV_FILE}
    ${lines}=      Split To Lines    ${content}

    # Remove cabeçalho corretamente
    ${data_lines}=    Get Slice From List    ${lines}    1

    FOR    ${line}    IN    @{data_lines}
        ${data}=    Split String    ${line}    ,

        ${nome}=               Set Variable    ${data}[0]
        ${data_nascimento}=    Set Variable    ${data}[1]
        ${sexo}=               Set Variable    ${data}[2]
        ${estado_civil}=       Set Variable    ${data}[3]
        ${naturalidade}=       Set Variable    ${data}[4]
        ${nacionalidade}=      Set Variable    ${data}[5]

        ${sql}=    Set Variable    INSERT INTO ${TABLE_NAME}(nome, data_nascimento, sexo, estado_civil, naturalidade, nacionalidade) VALUES ('${nome}', '${data_nascimento}', '${sexo}', '${estado_civil}', '${naturalidade}', '${nacionalidade}')

        Execute Sql String    ${sql}
    END

    Disconnect From Database

