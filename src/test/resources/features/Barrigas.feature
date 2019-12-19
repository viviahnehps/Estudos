#language:pt

Funcionalidade: Cadastro de Conta
           
Contexto:
  Dado abro nagevador chorme
  E acesso a URl do site
  Quando informo email com "vivis@testevi.com.br"
  E informo senha com "vivi123"
  E clico no botao salvar
  
@Acesso
Cenario: Acessar site Sr barriga

  Entao apresenta a tela login do Barriga
  
@login
Esquema do Cenario: Fazer o Login

 Entao visualizo a pagina inicial do Barriga
  
 
@addConta
Esquema do Cenario:  Adicionar conta
  
  E seleciono contas
  E clico Adicionar
  E informo a conta "<conta>"
  E clico em salvar
  Entao a conta e inserida com sucesso
  
  Exemplos:
   | conta    |
   | ContaCuc |
 
 
@addContaSemNome
Esquema do Cenario: Não deve inserir uma conta sem nome
 
  E seleciono contas
  E clico Adicionar
  E clico em salvar
  Entao sou notificado que o nome da conta e obrigatorio
 
  
@addContaJaExi 
Esquema do Cenario: Não deve inserir uma conta existente
  
  E seleciono contas
  E clico Adicionar
  E informo a conta "<conta>"
  E clico em salvar
  Entao sou notificado que a conta ja existe  
  Exemplos:
  
 | conta    |
 | ContaCuc |