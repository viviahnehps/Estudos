Dado("que estou no site do Batista") do
    #visit 'https://automacaocombatista.herokuapp.com'
    @home = Home.new
    @menufunc = MenuFuncionalidade.new
    @criarusu = CriarUsuario.new
    @home.load

  end
  
  Quando("acesso a página do cadastro") do
    @home.acessar_automacao

    @menufunc.acessar_criar_formulario
    @criarusu.preencher_campos("XPTO", "Silva", "Silva1@gmail.com", "Rua 2", "Anhembi", "Analista", "Masculino")
    #find(:xpath, '//*[@id="index-banner"]/div/div[3]/a').click
    #find(:xpath,'/html/body/div[2]/div[1]/ul/li[1]/a').click
    #find('body > div.row > div.col.s3 > ul > li.bold.active > a').click
    #click_link('a[href="/users/new"')
    #sleep(2)
    #find(:xpath, '/html/body/div[2]/div[1]/ul/li[1]/div/ul/li[1]/a').click
    #fill_in('user_name', :with => 'XPTO1')
    #fill_in('user_lastname', :with => 'Silva')
    #fill_in('user_email', :with => 'Silva1@gmail.com')
    #fill_in('user_address', :with => 'Rua 2')
    # fill_in('user_university', :with => 'Anhembi')
    # fill_in('user_profile', :with => 'Analista')
    # fill_in('user_gender', :with => 'Masculino')
    #find(:xpath, '//*[@id="user_age"]').click
    #binding.pry
    #fill_in('user_age', with => '20')
    #find(:xpath, '//*[@id="new_user"]/div[5]/div/div/input').click
  end

  Então("valido o cadastro realizado") do
    #assert_text("Usuário Criado com sucesso")

    @criarusu.validar_mensagem
  end