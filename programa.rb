# puts "Digite seu nome"
# nome = gets
# puts "Digite seu CPF"
# cpf = gets
# puts "Eu sou #{nome} e meu CPF é #{cpf}"  

#-Range + switch (tempo)-----------------
# current_time =ARGV.first.to_i
# case current_time
# when 0..45 then puts ("First Half")
# when 46..90 then puts ("Second Half")
# else puts ("Invalid time")
# end

#-Range + switch (notas)-----------------
#   nota = STDIN.gets.to_i
#   case nota 
#   when 0..5 then puts ("Reprovado")
#   when 6..10 then puts ("Aprovado")
#   else puts ("Nota invalida") 
#   end   

#-Laço -----------------
# puts "Vamos contar"
# for i in(1..10)
#  puts i    
# end

#-Expressões -----------------
# puts /ar/ =~"Vamos contar"
# puts /iro/ =~"Rio de janeiro"
# puts /[xmz]/ =~"amanda"
# puts /\s/ =~"amanda é doida"

#-Operador ||= -----------------
# nome = "iniciada"
# puts nome||="agora está cheia"

classe Nota

attr_accessor :nome, :nota


def CalculaNota(nota)
case nota 
when 0..5 then puts ("Nota Ruim")
when 6..10 then puts ("Boa Nota")
else puts ("Nota invalida") 
end 

CalculaNota(5)