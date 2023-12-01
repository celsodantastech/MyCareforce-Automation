*** Settings ***     
Documentation    Essa suíte testa funcionalidades do site https://qa-test-beryl.vercel.app/
Resource         mycareforce.src.robot

*** Test Cases ***

Test Case 01 - Acesso ao site qa-test-beryl.vercel.app
    [Documentation]    O teste deverá apresentar sucesso, pois o site abre normalmente
    Dado que eu tente acessar o site https://qa-test-beryl.vercel.app/
    Então o site https://qa-test-beryl.vercel.app/ abrirá corretamente
   
Test Case 02 - Preenchimento com dados válidos e envio
    [Documentation]    O teste deverá apresentar sucesso
    Dado que eu acesse o site https://qa-test-beryl.vercel.app/
    Quando eu preencher os campos de nome e e-mail com dados válidos
    E clicar em submit
    Então ele adicionará um colaborador na lista
  
Test Case 03 - Exclusão de um colaborador da lista
    [Documentation]    O teste deverá apresentar sucesso, pois o botão de exclusão funciona corretamente
    Dado que a minha lista tenha um colaborador
    Quando eu clicar no botão x
    Então o colaborador será removido da lista

Test Case 04 - Adição de um colaborador com nome inválido
    [Documentation]    O teste deverá FALHAR, pois o colaborador aparecerá na lista
    Dado que eu acesse o site https://qa-test-beryl.vercel.app/
    Quando eu preencher o campo de nome com um formato inválido
    E preencha o e-mail com um e-mail válido
    E pressionar o botão submit
    Então o colaborador não deverá ser adicionado na lista

Test Case 05 - Adição de um colaborador com e-mail inválido
    [Documentation]    O teste deverá falhar, pois o colaborador aparecerá na lista
    Dado que eu acesse o site https://qa-test-beryl.vercel.app/
    Quando eu preencher o campo de nome com um formato válido
    E preencha o e-mail com um e-mail inválido
    E pressionar o botão submit
    Então o colaborador não deverá ser adicionado na lista

Test Case 06 - Alterar entre modo tornurno e diurno
    [Documentation]  
    Dado que eu acesse o site https://qa-test-beryl.vercel.app/
    Quando eu clicar no botão para alteração entre modo noturno e diurno
    Então haverá a alteração do modo


Test Case 7 - Processo completo de inclusão e exclusão de um colaborador
    Dado que eu tente acessar o site https://qa-test-beryl.vercel.app/
    E preencher os campos de nome e e-mail com dados válidos
    E clicar em submit
    E adicionar um colaborador na lista
    Quando eu clicar no botão x
    Então o colaborador será removido da lista


Test Case 8 - Processo completo de inclusão, exclusão e alteração de modo noturno e diurno
    Dado que eu tente acessar o site https://qa-test-beryl.vercel.app/
    E preencher os campos de nome e e-mail com dados válidos
    E clicar em submit
    E adicionar um colaborador na lista
    Quando eu clicar no botão x
    Então o colaborador será removido da lista
    E quando eu clicar no botão para alteração entre modo noturno e diurno
    Então haverá a alteração do modo