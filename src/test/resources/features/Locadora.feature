#language:pt

@locadora
Funcionalidade: Testar funcionalidade da locadora
        Eu como usuario  quero cadastrar aluguéis de filmes
        Para controlar preços e datas de entrega      
 
 @tag1
 Cenario: Verificar aluguel com sucesso 
     Dado um filme com estoque de 2 unidades
     E que o preço do aluguel seja R$3,00
     Quando alugar o filme
     Entao preço do aluguel será R$3,00
     E data de entrega será no dia seguinte
     E estoque do filme será 1 unidade
    
    
 @tag2
 Cenario:Verificar aluguel de filme sem estoque 
     Dado um filme com estoque de 0 unidades
     Quando alugar o filme
     Entao não será possivel por falta de estoque
     E estoque do filme será 0 unidade
     
 @tag3    
 Cenario: Verificar aluguel com sucesso 
     Dado um filme com estoque de 2 unidades
     E que o preço do aluguel seja R$4,00
     E que o tipo de aluguel seja extendido
     Quando alugar o filme
     Entao preço do aluguel será R$ 8,00
     E data de entrega será em 3 dias
     E a pontuação recebida sera de 2 pontos
     