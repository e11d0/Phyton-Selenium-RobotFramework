#'importa' a classe base.robot e define a ação do test setup e teardown, beforeeach e aftereach respectivamente
***Settings***
Resource                base.robot
Test Setup              Nova sessao
Test Teardown           Encerra sessao
#define as variaveis que serão usdas ao longo do teste
***Variables***

***Test Cases***
Selecionando por id
    Go To                                       ${url}/radios
    Select Radio Button                         movies              cap
    Radio Button Should Be Set To               movies              cap
Selecionando por value
    Go To                                       ${url}/radios
    Select Radio Button                         movies              guardians
    Radio Button Should Be Set To               movies              guardians
