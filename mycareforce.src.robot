*** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***

${random_user}     ${EMPTY} 
${random_email}    ${EMPTY}
${URL}                   https://qa-test-beryl.vercel.app/
${botao_submit}          //button[@type='submit'][contains(.,'Submit')]
${campo_nome}            //input[contains(@placeholder,'Enter your name')]
${campo_email}           //input[contains(@placeholder,'Enter your email')]
${lista_colaboradores}   //div[@class='css-9j49g9'][contains(.,'Name: Leanne GrahamEmail: Sincere@april.biz')]
${botao_excluir}         //button[contains(@aria-label,'Remove user Patricia Lebsack')]
${botao_noturno}         //button[contains(@class,'chakra-button css-u9fopf')]
${botao_diurno}          //button[contains(@class,'chakra-button css-2wukzb')]

*** Keywords ***

Dado que eu tente acessar o site https://qa-test-beryl.vercel.app/
   Open Browser          ${URL}    chrome
   Maximize Browser Window

Então o site https://qa-test-beryl.vercel.app/ abrirá corretamente
   Sleep    0.5s
   Location Should Be    https://qa-test-beryl.vercel.app/

Dado que eu acesse o site https://qa-test-beryl.vercel.app/
   Open Browser          ${URL}    chrome
   Maximize Browser Window

Quando eu preencher os campos de nome e e-mail com dados válidos
   Sleep    0.5s
   ${random_user}    Generate Random String    8    [LETTERS]
   Input Text    ${campo_nome}     ${random_user}
   Sleep    0.5s
   ${random_email}      Set Variable    ${random_user}@example.com
   Input Text    ${campo_email}    ${random_email}
   Sleep    0.5s

E clicar em submit
   Click Button    ${botao_submit}

Então ele adicionará um colaborador na lista
   Execute JavaScript     window.scrollTo(0, document.body.scrollHeight)
   Sleep    0.5s
   ${colaborador_adicionado}    Run Keyword And Return Status    Element Should Contain    ${lista_colaboradores}    ${random_user}
   Should Be True    ${colaborador_adicionado}
   Sleep    0.5s

Dado que a minha lista tenha um colaborador
    Dado que eu acesse o site https://qa-test-beryl.vercel.app/
    Sleep    0.5s
    Então ele adicionará um colaborador na lista
    Sleep    0.5s

Quando eu clicar no botão X
    Wait Until Element Is Visible    ${botao_excluir}
    Sleep    0.5s
    Click Button    ${botao_excluir}
    Sleep    0.5s

Então o colaborador será removido da lista
    Element Should Not Be Visible    ${botao_excluir} 
    Sleep    0.5s

E preencher os campos de nome e e-mail com dados válidos
    Quando eu preencher os campos de nome e e-mail com dados válidos
    Sleep    0.5s

E adicionar um colaborador na lista
    Então ele adicionará um colaborador na lista
    Sleep    0.5s

Quando eu preencher o campo de nome com um formato inválido
    Sleep    0.5s
    Input Text    ${campo_nome}    58489418649894
    Sleep    0.5s

E preencha o e-mail com um e-mail válido
   ${random_email}      Set Variable    ${random_user}@example.com
   Input Text    ${campo_email}    ${random_email}
   Sleep    0.5s

   
E pressionar o botão submit
    E clicar em submit
    Sleep    0.5s

Então o colaborador não deverá ser adicionado na lista
   Execute JavaScript    window.scrollBy(0, ${100})
   Sleep    0.5s
   ${colaborador_adicionado}    Run Keyword And Return Status    Element Should Not Contain    ${lista_colaboradores}    ${random_user}
   Should Be True    ${colaborador_adicionado}

E preencha o e-mail com um e-mail inválido
    Input Text    ${campo_email}    58489418649894
    Sleep    0.5s

Quando eu preencher o campo de nome com um formato válido
    ${random_user}    Generate Random String    8    [LETTERS]
    Input Text    ${campo_nome}     ${random_user}
    Sleep    0.5s

Quando eu clicar no botão para alteração entre modo noturno e diurno
   Sleep    0.5s
   Click Element   ${botao_noturno}

Então haverá a alteração do modo
   Sleep    0.5s
   Click Element   ${botao_diurno}

E quando eu clicar no botão para alteração entre modo noturno e diurno
   Quando eu clicar no botão para alteração entre modo noturno e diurno
   Sleep    0.5s


