#'importa' a classe base.robot e define a ação do test setup e teardown, beforeeach e aftereach respectivamente
***Settings***
Resource                base.robot
Test Setup              Nova sessao
Test Teardown           Encerra sessao
#define as variaveis que serão usdas ao longo do teste
***Variables***



***Test Cases***
Selecionando por texto e validando pelo valor
    Go To                                   ${url}/dropdown
    Select From List By Label               class:avenger-list          Scott Lang
    ${selected}=                            Get Selected List Value     class:avenger-list
    Should Be Equal                         ${selected}                 7

Selecionando por valor e validando por texto
    Go To                                   ${url}/dropdown
    Select From List By Value               id:dropdown                 6
    ${selected}=                            Get Selected List Label     id:dropdown
    Should Be Equal                         ${selected}                 Loki