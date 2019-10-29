class MenuFuncionalidade < SitePrism::Page
    element :formulario, :xpath, '/html/body/div[2]/div[1]/ul/li[1]/a'
    element :criar_formulario, 'a[href="/users/new"]'


    def acessar_criar_formulario
          
        formulario.click
            sleep(2)
            criar_formulario.click
    end

    
end

