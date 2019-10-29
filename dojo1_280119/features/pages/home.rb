class Home < SitePrism::Page
    set_url "https://automacaocombatista.herokuapp.com/"

    element :comecar_automacao, :xpath, '//*[@id="index-banner"]/div/div[3]/a'
  

    def acessar_automacao
        comecar_automacao.click
    end

end