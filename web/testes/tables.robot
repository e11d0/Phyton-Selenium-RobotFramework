#'importa' a classe base.robot e define a ação do test setup e teardown, beforeeach e aftereach respectivamente
***Settings***
Resource                base.robot
Test Setup              Nova sessao
Test Teardown           Encerra sessao
#define as variaveis que serão usdas ao longo do teste
***Variables***

***Test Cases***
Verifica valor ao informar o numero da linha
    Go to                                   ${url}/tables   
    Table Row Should Contain                id:actors           1        	$ 10.000.000

Descobre linha pelo texto e valida o demais valores
    Go to                                   ${url}/tables
    ${target}=                              Get WebElement      xpath:.//tr[contains (., '@chadwickboseman')]
    Log                                     ${target.text}
    Should Contain                          ${target.text}      $ 700.000
    Should Contain                          ${target.text}      Pantera Negra
