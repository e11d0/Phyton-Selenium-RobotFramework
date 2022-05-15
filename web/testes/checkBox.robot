#'importa' a classe base.robot e define a ação do test setup e teardown, beforeeach e aftereach respectivamente
***Settings***
Resource                        base.robot
Test Setup                      Nova sessao
Test Teardown                   Encerra sessao

#define as variaveis que serão usdas ao longo do teste
***Variables***
${check_thor}                   id:thor
${check_iron}                   css:input[value='iron-man']
${check_panther}                xpath://*[@id='checkboxes']/input[7]


***Test Cases***
Marcar checkbox pelo ID

    Go To                           ${url}/checkboxes
    Select checkbox                 ${check_thor}
    Checkbox Should Be Selected     ${check_thor}


Marcar checkbox pelo Css

    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_iron}
    Checkbox Should Be Selected     ${check_iron}


Marcando opção com Xpath

    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_panther}
    Checkbox Should Be Selected     ${check_panther}


