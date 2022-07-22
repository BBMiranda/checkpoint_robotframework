#Bruno Barros Miranda
*** Settings ***
Library         SeleniumLibrary
Resource        ./hurb.resource
Test Setup      Abrir o site da Hurb
Test Teardown   Close Browser

*** Test Cases ***
01.Processo de reserva de pacote de viagens "Veneza"
  Clicar em “Permitir todos os cookies”
  Selecionar a opção "Pacotes"
  Buscar por Veneza e clicar em “Pesquisar”
  Selecionar pacote de viagem
  Clicar em “Escolher pacote”
  Selecionar a opção do pacote e clicar em “Ir para pagamento” Veneza
  Validar as informações da “Configuração” da viagem
  Validar as informações "Período" de viagem
  Selecionar a opção “Boleto parcelado”
  Preencher os dados de pagamento
  Marcar o checkbox “Li e aceito as condições de termos de uso e política de privacidade”
  Validar a informação sobre cancelamento grátis

02.Processo de reserva de pacote de viagens "Roma"
  Clicar em “Permitir todos os cookies”
  Selecionar a opção "Pacotes"
  Buscar por Roma e clicar em “Pesquisar”
  Selecionar pacote de viagem
  Clicar em “Escolher pacote”
  Selecionar a opção do pacote e clicar em “Ir para pagamento” Roma
  Validar as informações da “Configuração” da viagem
  Validar as informações "Período" de viagem
  Selecionar a opção “Boleto parcelado”
  Preencher os dados de pagamento
  Marcar o checkbox “Li e aceito as condições de termos de uso e política de privacidade”
  Validar a informação sobre cancelamento grátis

03.Processo de reserva de pacote de viagens "Buenos Aires"
  Clicar em “Permitir todos os cookies”
  Selecionar a opção "Pacotes"
  Buscar por Buenos Aires e clicar em “Pesquisar”
  Selecionar pacote de viagem
  Clicar em “Escolher pacote”
  Selecionar a opção do pacote e clicar em “Ir para pagamento” Buenos Aires
  Validar as informações da “Configuração” da viagem Buenos Aires
  Validar as informações "Período" de viagem Buenos Aires
  Selecionar a opção “Boleto parcelado”
  Preencher os dados de pagamento
  Marcar o checkbox “Li e aceito as condições de termos de uso e política de privacidade”
  Validar a informação sobre cancelamento grátis

04.Processo de reserva de pacote de viagens "Barcelona"
  Clicar em “Permitir todos os cookies”
  Selecionar a opção "Pacotes"
  Buscar por Barcelona e clicar em “Pesquisar”
  Selecionar pacote de viagem
  Clicar em “Escolher pacote”
  Selecionar a opção do pacote e clicar em “Ir para pagamento” Barcelona
  Selecionar a opção “Boleto parcelado”
  Preencher os dados de pagamento
  Marcar o checkbox “Li e aceito as condições de termos de uso e política de privacidade”
  Validar a informação sobre cancelamento grátis

