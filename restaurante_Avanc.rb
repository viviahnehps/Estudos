#---------- metodos e ca------------
# def CalculaNota(nota, msg = "Thanks")
#     puts "Nota  #{nota}. #{msg}" 

# end
# CalculaNota(8) 
# CalculaNota(1,"pessimo lugar") 


#--------- Classes---------------

class Restaurante

    def qualifica(nota, msg = "Thanks")
     puts "Nota  #{nota}. #{msg}" 
    end    


rest1 = Restaurante.new
rest2 = Restaurante.new

rest1.qualifica(5)
rest2.qualifica(2,"muito ruim")
end
urub
