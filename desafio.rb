#desafios 
#Item 3.13
# resultado = 10 ** 2
# texto = "O valor é  #{resultado}"
# puts(texto) 

#item 4.10
class Pessoa 
    def muda_nome(novo_nome) 
        @nome = novo_nome 
    end
    def diz_nome 
        puts "meu nome é #{@nome}" 
    end 
end
    
    p = Pessoa.new 
    p.muda_nome "João" 
    p.diz_nome
    

