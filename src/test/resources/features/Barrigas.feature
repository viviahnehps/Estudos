#language:pt

Funcionalidade: Eu como usuario quero cadastrar contas
                Para poder distribuir meu dinheiro de forma mais organizada
   

@Acesso
Cenario: Acessar site Sr barriga

  Dado abro nagevador chorme
  Quando acesso a URl do site
  Entao apresenta a tela login do Barriga
  
@login
Esquema do Cenario: Fazer o Login

  Dado abro nagevador chorme
  E acesso a URl do site
  Quando informo email com "<usuario>"
  E informo senha com "<senha>"
  E clico no botao salvar
  Entao visualizo a pagina inicial do Barriga
  
  Exemplos:
  |usuario               | senha   |
  | vivis@testevi.com.br | vivi123 |

@addConta
Esquema do Cenario:  Adicionar conta
  Dado abro nagevador chorme
  E acesso a URl do site
  Quando informo email com "<usuario>"
  E informo senha com "<senha>"
  E clico no botao salvar
  E seleciono contas
  E clico Adicionar
  E informo a conta "<conta>"
  E clico em salvar
  Entao a conta e inserida com sucesso
  
  Exemplos:
   |usuario               |senha    | conta    |
   | vivis@testevi.com.br | vivi123 | ContaCuc |
 
 
@addContaSemNome
Esquema do Cenario: Não deve inserir uma conta sem nome
 
  Dado abro nagevador chorme
  E acesso a URl do site
  Quando informo email com "<usuario>"
  E informo senha com "<senha>"
  E clico no botao salvar
  E seleciono contas
  E clico Adicionar
  E clico em salvar
  Entao sou notificado que o nome da conta e obrigatorio
   
   Exemplos:
   
  | usuario              |senha    | 
  | vivis@testevi.com.br | vivi123 | 
 
  
@addContaJaExi 
Esquema do Cenario: Não deve inserir uma conta existente
  Dado abro nagevador chorme
  E acesso a URl do site
  Quando informo email com "<usuario>"
  E informo senha com "<senha>"
  E clico no botao salvar
  E seleciono contas
  E clico Adicionar
  E informo a conta "<conta>"
  E clico em salvar
  Entao sou notificado que a conta ja existe
  
  Exemplos:
  
   | usuario              | senha   | conta    |
   | vivis@testevi.com.br | vivi123 | ContaCuc |