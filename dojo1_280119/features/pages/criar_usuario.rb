class CriarUsuario < SitePrism::Page


    element :name, '#user_name'
    element :lastname, '#user_lastname'
    element :e_mail, '#user_email'
    element :adress, '#user_address'
    element :university, '#user_university'
    element :profile, '#user_profile'
    element :gender, '#user_gender'

    element :bt_criar, :xpath, '//*[@id="new_user"]/div[5]/div/div/input'

 def preencher_campos(nome,sobrenome,email,endereco,universidade,profissao,genero)
    #binding.pry
    name.set(nome)
    lastname.set(sobrenome)
    e_mail.set(email)
    adress.set(endereco)
    university.set(universidade)
    profile.set(profissao)
    gender.set(genero)

    bt_criar.click

 end
     
 def validar_mensagem
    assert_text("Usuário Criado com sucesso")
 end
 
end