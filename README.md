# Projeto de Automação com Robot Framework

Este projeto de automação foi desenvolvido utilizando o Robot Framework para testar as funcionalidades do site [qa-test-beryl.vercel.app](https://qa-test-beryl.vercel.app/). O objetivo é garantir que o site funcione corretamente e que as interações dos usuários, como preenchimento de formulários e alterações de modo, ocorram sem problemas.

## Suíte de Testes

### Test Case 01 - Acesso ao site qa-test-beryl.vercel.app
- **Descrição:** Este teste verifica se o site abre corretamente.
- **Passos:**
  - Dado que eu tente acessar o site [qa-test-beryl.vercel.app](https://qa-test-beryl.vercel.app/)
  - Então o site [qa-test-beryl.vercel.app](https://qa-test-beryl.vercel.app/) abrirá corretamente

### Test Case 02 - Preenchimento com dados válidos e envio
- **Descrição:** Este teste verifica se é possível preencher os campos de nome e e-mail com dados válidos e adicionar um colaborador na lista.
- **Passos:**
  - Dado que eu acesse o site [qa-test-beryl.vercel.app](https://qa-test-beryl.vercel.app/)
  - Quando eu preencher os campos de nome e e-mail com dados válidos
  - E clicar em submit
  - Então ele adicionará um colaborador na lista

### Test Case 03 - Exclusão de um colaborador da lista
- **Descrição:** Este teste verifica se é possível excluir um colaborador da lista.
- **Passos:**
  - Dado que a minha lista tenha um colaborador
  - Quando eu clicar no botão x
  - Então o colaborador será removido da lista

### Test Case 04 - Adição de um colaborador com nome inválido
- **Descrição:** Este teste verifica se a adição de um colaborador com nome inválido falha.
- **Passos:**
  - Dado que eu acesse o site [qa-test-beryl.vercel.app](https://qa-test-beryl.vercel.app/)
  - Quando eu preencher o campo de nome com um formato inválido
  - E preencha o e-mail com um e-mail válido
  - E pressionar o botão submit
  - Então o colaborador não deverá ser adicionado na lista

### Test Case 05 - Adição de um colaborador com e-mail inválido
- **Descrição:** Este teste verifica se a adição de um colaborador com e-mail inválido falha.
- **Passos:**
  - Dado que eu acesse o site [qa-test-beryl.vercel.app](https://qa-test-beryl.vercel.app/)
  - Quando eu preencher o campo de nome com um formato válido
  - E preencha o e-mail com um e-mail inválido
  - E pressionar o botão submit
  - Então o colaborador não deverá ser adicionado na lista

### Test Case 06 - Alterar entre modo noturno e diurno
- **Descrição:** Este teste verifica se é possível alterar entre o modo noturno e diurno do site.
- **Passos:**
  - Dado que eu acesse o site [qa-test-beryl.vercel.app](https://qa-test-beryl.vercel.app/)
  - Quando eu clicar no botão para alteração entre modo noturno e diurno
  - Então haverá a alteração do modo

### Test Case 7 - Processo completo de inclusão e exclusão de um colaborador
- **Descrição:** Este teste verifica o processo completo de inclusão e exclusão de um colaborador.
- **Passos:**
  - Dado que eu tente acessar o site [qa-test-beryl.vercel.app](https://qa-test-beryl.vercel.app/)
  - E preencher os campos de nome e e-mail com dados válidos
  - E clicar em submit
  - E adicionar um colaborador na lista
  - Quando eu clicar no botão x
  - Então o colaborador será removido da lista

### Test Case 8 - Processo completo de inclusão, exclusão e alteração de modo noturno e diurno
- **Descrição:** Este teste verifica o processo completo de inclusão, exclusão e alteração de modo noturno e diurno.
- **Passos:**
  - Dado que eu tente acessar o site [qa-test-beryl.vercel.app](https://qa-test-beryl.vercel.app/)
  - E preencher os campos de nome e e-mail com dados válidos
  - E clicar em submit
  - E adicionar um colaborador na lista
  - Quando eu clicar no botão x
  - Então o colaborador será removido da lista
  - E quando eu clicar no botão para alteração entre modo noturno e diurno
  - Então haverá a alteração do modo

## Configurações e Variáveis

### Bibliotecas Utilizadas
- SeleniumLibrary
- String

### Variáveis
- `${random_user}`: Variável para armazenar um nome de usuário aleatório.
- `${random_email}`: Variável para armazenar um e-mail aleatório.
- `${URL}`: URL do site a ser testado.
- `${botao_submit}`: XPath do botão de submit.
- `${campo_nome}`: XPath do campo de nome.
- `${campo_email}`: XPath do campo de e-mail.
- `${lista_colaboradores}`: XPath da lista de colaboradores.
- `${botao_excluir}`: XPath do botão de exclusão.
- `${botao_noturno}`: XPath do botão para modo noturno.
- `${botao_diurno}`: XPath do botão para modo diurno.

## Keywords
### Dado que eu tente acessar o site https://qa-test-beryl.vercel.app/
- Abre o navegador Chrome, acessa o site e maximiza a janela.

### Então o site https://qa-test-beryl.vercel.app/ abrirá corretamente
- Verifica se a URL corresponde ao site esperado.

### Quando eu preencher os campos de nome e e-mail com dados válidos
- Preenche os campos de nome e e-mail com dados válidos.

### E clicar em submit
- Clica no botão de submit.

### Então ele adicionará um colaborador na lista
- Verifica se o colaborador foi adicionado corretamente à lista.

### Dado que a minha lista tenha um colaborador
- Acessa o site e verifica se há pelo menos um colaborador na lista.

### Quando eu clicar no botão X
- Aguarda a visibilidade do botão de exclusão e clica nele.

### Então o colaborador será removido da lista
- Verifica se o colaborador foi removido corretamente da lista.

### Quando eu preencher o campo de nome com um formato inválido
- Preenche o campo de nome com um formato inválido.

### E preencha o e-mail com um e-mail válido
- Preenche o campo de e-mail com um e-mail válido.

### E pressionar o botão submit
- Pressiona o botão de submit.

### Então o colaborador não deverá ser adicionado na lista
- Verifica se o colaborador não foi adicionado à lista.

### E preencha o e-mail com um e-mail inválido
- Preenche o campo de e-mail com um e-mail inválido.

### Quando eu preencher o campo de nome com um formato válido
- Preenche o campo de nome com um formato válido.

### Quando eu clicar no botão para alteração entre modo noturno e diurno
- Clica no botão para alteração entre modo noturno e diurno.

### Então haverá a alteração do modo
- Verifica se houve a alteração correta do modo.

### E quando eu clicar no botão para alteração entre modo noturno e diurno
- Clica novamente no botão para alteração entre modo noturno e diurno.


