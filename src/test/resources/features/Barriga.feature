#language :pt
#
#Funcionalidade: Site sr barriga
  #Eu como usuario quero testar funcionalidade do Sr Barriga
  #Para aprender automacao 
  #
#
#@ignore
  #Cenario: Verificar acesso ao site Sr  Barriga
  #Dado abro no navegador
  #Quando acesso a site Sr barriga
  #Então sistema apresenta pagina inicial Sr Barriga
 #
 #@contador1
 #Cenario: Verificar incremento contador
  #Dado que o valor do contador é 15
  #Quando quando incrementar em 3
  #Então valor do contador vai para 18
#
#@contador2  
  #Cenario: Verificar incremento contador
  #Dado que o valor do contador é 123
  #Quando quando incrementar em 35
  #Então valor do contador vai para 158
 #
#@atrasoDias
 #Cenario: Deve calcular atraso no prazo de entrega
  #Dado que a entrega é dia 12/12/2019
  #Quando a entrega atrasar em 2 dias
  #Então entao a entrega será efetuado em 14/12/2019
#
#@atrasoMeses  
 #Cenario: Deve calcular atraso no prazo de entrega da china
  #Dado que a entrega é dia 12/12/2019
  #Quando a entrega atrasar em 2 meses
  #Então entao a entrega será efetuado em 12/02/2020
   #
   #
#@tipo1
#Cenário: Deve criar steps genéricos para estes passos
    #Dado que o ticket é AF345
    #* que o valor da passagem é R$ 230,45
    #* que o nome do passageiro é "Fulano da Silva"
    #* que o telefone do passageiro é 9999-9999
    #Quando criar os steps
    #Então o teste vai funcionar
    #
#@tipo2
#Cenário: Deve reaproveitar os steps "Dado" do cenário anterior
    #Dado que o ticket é AB167
    #E que o ticket especial é AB167
    #E que o valor da passagem é R$ 1120,23
    #E que o nome do passageiro é "Cicrano de Oliveira"
    #E que o telefone do passageiro é 9888-8888
    #
#
#@tipo1  @tipo3
#Cenário: Deve negar todos os steps "Dado" dos cenários anteriores
    #Dado que o ticket é CD123
    #Mas que o ticket é AG1234
    #E que o valor da passagem é R$ 1.1345,56
    #E que o nome do passageiro é "Beltrano Souza Matos de Alcântara Azevedo"
    #E que o telefone do passageiro é 1234-5678
    #E que o telefone do passageiro é 999-2223  
   #
  