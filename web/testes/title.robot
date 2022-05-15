#'importa' a classe base.robot e define a ação do test setup e teardown, beforeeach e aftereach respectivamente
***Settings***
Resource                base.robot
Test Setup              Nova sessao
Test Teardown           Encerra sessao
#define as variaveis que serão usdas ao longo do teste
***Variables***

***Test Cases***
Should Check Page Title

    Title Should Be             Training Wheels Protocol
