*** Variables ***
${SITE}                           http://hurb.com/br
${NAVEGADOR}                      Firefox
${BTN_COOKIES}                    xpath=//*[@id="CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll"]
${BTN_PACOTES}                    xpath=//*[@id="__next"]/div[1]/div[2]/div/div/div[1]/div/div/button[2]
${CAMPO_PESQUISA}                 css=#destination-input
${CIDADE}                         Veneza
${CIDADE_2}                       Roma
${CIDADE_3}                       Buenos Aires
${CIDADE_4}                       Barcelona
${BTN_PESQUISA}                   xpath=//*[@id="__next"]/div[1]/div[2]/div/div/div[2]/button
${PACOTE_VIAGEM}                  xpath=/html/body/div[1]/div/main/section/div[2]/a/div[1]/img
${ESCOLHER_PACOTE}                xpath=/html/body/div[1]/div/main/div[3]/aside/div/div/div[2]/button
${IR_SAIDA}                       css=li.h-1iwy9aa:nth-child(7) > label:nth-child(1) > div:nth-child(1) > div:nth-child(1)
${IR_SAIDA_2}                     css=li.h-1iwy9aa:nth-child(3) > label:nth-child(1) > div:nth-child(1) > div:nth-child(1)
${IR_TEMPO}                       css=.h-7k3cv9
${IR_PAGAMENTO}                   css=.h-1yuatql
${CONFIG}                         xpath=/html/body
${CONFIG_VIAGEM}                  7 diárias\n1 pessoa por pacote
${CONFIG_VIAGEM_2}                4 diárias\n1 pessoa por pacote
${CONFIG_PARTIR}                  01 Mar 2023
${CONFIG_PARTIR_2}                01 Mar 2024
${CONFIG_ATÉ}                     30 Nov 2023
${CONFIG_ATÉ_2}                   30 Nov 2024
${BOLETO}                         css=#ui-id-1
${CAMPO_NOME}                     xpath=/html/body/div[3]/div/div[2]/div/div/form/div[5]/div[1]/div/div[2]/section/div[1]/div[1]/div/input
${NOME}                           Bruno B. Miranda
${CAMPO_CPF}                      xpath=/html/body/div[3]/div/div[2]/div/div/form/div[5]/div[1]/div/div[2]/section/div[1]/div[2]/div/input
${CPF}                            83535041112
${CAMPO_CELULAR}                  xpath=/html/body/div[3]/div/div[2]/div/div/form/div[5]/div[1]/div/div[2]/section/div[2]/div[1]/div/input
${CELULAR}                        61982383337
${CHECKBOX}                       xpath=//*[@id="cancellation-policy"]
${CANCELAMENTO}                   Cancelamento Grátis!

*** Keywords ***
#Test Setup
Abrir o site da Hurb
  Sleep                           10
  Set Selenium Speed              1
  Set Selenium Implicit Wait      10
  Open Browser                    ${SITE}                ${NAVEGADOR}
  Maximize Browser Window

#Test Cases
Clicar em “Permitir todos os cookies”
  Sleep                           10
  Wait and Click                  ${BTN_COOKIES}

Selecionar a opção "Pacotes"
  Wait and Click                  ${BTN_PACOTES}

Buscar por Veneza e clicar em “Pesquisar”
  Wait and Input Text             ${CAMPO_PESQUISA}      ${CIDADE}
  Wait and Click                  ${BTN_PESQUISA}

Selecionar pacote de viagem
  Wait and Click                  ${PACOTE_VIAGEM}
  Switch Window                   NEW

Clicar em “Escolher pacote”
  Sleep                           10
  Wait and Click                  ${ESCOLHER_PACOTE}

Selecionar a opção do pacote e clicar em “Ir para pagamento” Veneza
  Wait and Click                  ${IR_SAIDA}
  Wait and Click                  ${IR_PAGAMENTO}
  Wait and Click                  ${IR_TEMPO}
  Wait and Click                  ${IR_PAGAMENTO}
  Wait and Click                  ${IR_PAGAMENTO}


Validar as informações da “Configuração” da viagem
  Sleep                           10
  Element Should Contain          ${CONFIG}              ${CONFIG_VIAGEM}

Validar as informações "Período" de viagem
  Element Should Contain          ${CONFIG}              ${CONFIG_PARTIR}
  Element Should Contain          ${CONFIG}              ${CONFIG_ATÉ}

Selecionar a opção “Boleto parcelado”
  Sleep                           10
  Wait and Click                  ${BOLETO}

Preencher os dados de pagamento
  Wait and Input Text             ${CAMPO_NOME}          ${NOME}
  Wait and Input Text             ${CAMPO_CPF}           ${CPF}
  Wait and Input Text             ${CAMPO_CELULAR}       ${CELULAR}

Marcar o checkbox “Li e aceito as condições de termos de uso e política de privacidade”
  Select Checkbox                 ${CHECKBOX}                 

Validar a informação sobre cancelamento grátis
  Element Should Contain          ${CONFIG}              ${CANCELAMENTO}

# 02
Buscar por Roma e clicar em “Pesquisar”
  Wait and Input Text             ${CAMPO_PESQUISA}      ${CIDADE_2}
  Wait and Click                  ${BTN_PESQUISA}

Selecionar a opção do pacote e clicar em “Ir para pagamento” Roma
  Wait and Click                  ${IR_SAIDA_2}
  Wait and Click                  ${IR_PAGAMENTO}
  Wait and Click                  ${IR_TEMPO}
  Wait and Click                  ${IR_PAGAMENTO}
  Wait and Click                  ${IR_PAGAMENTO}

# 03
Buscar por Buenos Aires e clicar em “Pesquisar”
  Wait and Input Text             ${CAMPO_PESQUISA}      ${CIDADE_3}
  Wait and Click                  ${BTN_PESQUISA}

Selecionar a opção do pacote e clicar em “Ir para pagamento” Buenos Aires
  Wait and Click                  ${IR_SAIDA_2}
  Wait and Click                  ${IR_PAGAMENTO}
  Wait and Click                  ${IR_TEMPO}
  Wait and Click                  ${IR_PAGAMENTO}
  Wait and Click                  ${IR_PAGAMENTO}

Validar as informações da “Configuração” da viagem Buenos Aires
  Sleep                           5
  Element Should Contain          ${CONFIG}              ${CONFIG_VIAGEM_2}

Validar as informações "Período" de viagem Buenos Aires
  Element Should Contain          ${CONFIG}              ${CONFIG_PARTIR_2}
  Element Should Contain          ${CONFIG}              ${CONFIG_ATÉ_2}

# 04
Buscar por Barcelona e clicar em “Pesquisar”
  Wait and Input Text             ${CAMPO_PESQUISA}      ${CIDADE_4}
  Wait and Click                  ${BTN_PESQUISA}

Selecionar a opção do pacote e clicar em “Ir para pagamento” Barcelona
  Wait and Click                  ${IR_SAIDA_2}
  Wait and Click                  ${IR_PAGAMENTO}
  Wait and Click                  ${IR_TEMPO}
  Wait and Click                  ${IR_PAGAMENTO}
  Wait and Click                  ${IR_PAGAMENTO}

### Keywords Personalizadas ###
Wait and Click
  [Arguments]                     ${ELEMENTO}
  Wait Until Element is Visible   ${ELEMENTO}
  Click Element                   ${ELEMENTO}

Wait and Input Text
  [Arguments]                     ${CAMPO}               ${TEXTO}
  Wait Until Element is Visible   ${CAMPO}
  Input Text                      ${CAMPO}               ${TEXTO}