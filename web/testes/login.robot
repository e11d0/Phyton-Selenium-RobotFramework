#'importa' a classe base.robot e define a ação do test setup e teardown, beforeeach e aftereach respectivamente
***Settings***
Resource                base.robot
Test Setup              Nova sessao
Test Teardown           Encerra sessao
#define as variaveis que serão usdas ao longo do teste
***Variables***

***Test Cases***
Login com sucesso
    Go To                               ${url}/login

    Login With                          stark  jarvis!
    Should See Logged User              Tony Stark

Senha Invalida
    Go To                               ${url}/login
    Login With                          stark  jarvis
    Should Contain Login Alert          Senha é invalida!

Usuario nao existe
    Go To                               ${url}/login
    Login With                          asdsada  jarvis!
    Should Contain Login Alert          O usuário informado não está cadastrado!
#Define os metodos da 'classe'
***Keywords***
Login With
    [Arguments]     ${uname}      ${pass}
    Input Text                         css:input[name='username']      ${uname}
    Input Text                         css:input[name='password']      ${pass}
    Click Element                      class:btn-login

Should Contain Login Alert
    [Arguments]                        ${expected_message}
    ${massage}=                        Get Webelement              id:flash
    Should Contain                     ${massage.text}             ${expected_message}

Should See Logged User
    [Arguments]     ${full_name}
    Page Should Contain                Olá, ${full_name}. Você acessou a área logada!
