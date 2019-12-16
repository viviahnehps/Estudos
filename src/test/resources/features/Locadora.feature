#language:pt

@locadora
Funcionalidade: Testar funcionalidade da locadora
        Eu como usuario  quero cadastrar alugu�is de filmes
        Para controlar pre�os e datas de entrega      
 
 @tag1
 Cenario: Verificar aluguel com sucesso 
     Dado um filme com estoque de 2 unidades
     E que o pre�o do aluguel seja R$3,00
     Quando alugar o filme
     Entao pre�o do aluguel ser� R$3,00
     E data de entrega ser� no dia seguinte
     E estoque do filme ser� 1 unidade
    
    
 @tag2
 Cenario:Verificar aluguel de filme sem estoque 
     Dado um filme com estoque de 0 unidades
     Quando alugar o filme
     Entao n�o ser� possivel por falta de estoque
     E estoque do filme ser� 0 unidade
     
 @tag3    
 Cenario: Verificar aluguel com sucesso 
     Dado um filme com estoque de 2 unidades
     E que o pre�o do aluguel seja R$4,00
     E que o tipo de aluguel seja extendido
     Quando alugar o filme
     Entao pre�o do aluguel ser� R$ 8,00
     E data de entrega ser� em 3 dias
     E a pontua��o recebida sera de 2 pontos
     