#Chama a biblioteca do selenium
***Settings***
Library     SeleniumLibrary

#Defime o 'url' global
***Variables***
${url}                  https://training-wheels-protocol.herokuapp.com


#Definindo os metodos para executa no incio e no fim de cada teste
***Keywords***
#Abre o navegador no endereço da variavel $url com o navegador chrome
Nova sessao
    Open Browser                ${url}      chrome

#Faz uma captura da tela ao fim do teste e fecha o navegador
Encerra sessao
    Capture Page Screenshot
    Close Browser