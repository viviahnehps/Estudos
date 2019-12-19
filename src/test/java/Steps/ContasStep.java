package Steps;

import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Quando;
import cucumber.api.java.pt.Entao;

public class ContasStep {
	
	ContaMap cntM = new ContaMap();
	
	@Dado("^abro nagevador chorme$")
	public void abroNagevadorChorme() throws Throwable {
	  cntM.openNavegavador();   
	
	}

	@Quando("^acesso a URl do site$")
	public void acessoAURlDoSite() throws Throwable {
	 cntM.barrigaUrl("https://seubarriga.wcaquino.me/");
	}

	
	@Quando("^informo email com \"([^\"]*)\"$")
	public void informoEmailCom(String usuario) throws Throwable {
		cntM.preencheCampo("email", usuario);
	}

	@Quando("^informo senha com \"([^\"]*)\"$")
	public void informoSenhaCom(String senha) throws Throwable {
		cntM.preencheCampo("senha", senha);
	}
	
	@Quando("^clico no botao salvar$")
	public void clicoNoBotaoSalvar() throws Throwable {
	 cntM.clicaBtn("/html/body/div[2]/form/button");
	         
	}
	
	
	@Quando("^seleciono contas$")
	public void selecionoContas() throws Throwable {
		cntM.clicaLink("Contas");
		
	}

	@Quando("^clico Adicionar$")
	public void clicoAdicionar() throws Throwable {
		cntM.clicaLink("Adicionar");
	}

	@Quando("^clico em salvar$")
	public void clicoEmSalvar() throws Throwable {
		cntM.clicaBtn("/html/body/div[2]/form/div[2]/button");
         
	}
	@Quando("^informo a conta \"([^\"]*)\"$")
	public void informoAConta(String conta) throws Throwable {
	   cntM.preencheCampo("nome",conta);
     	   
	}

	@Entao("^apresenta a tela login do Barriga$")
	public void apresenta_a_tela_login_do_Barriga() throws Throwable {
	   cntM.validaPag("Seu Barriga - Log in");

     }

	@Entao("^visualizo a pagina inicial do Barriga$")
	public void visualizoAPaginaInicialDoBarriga() throws Throwable {
		cntM.validaMensagem("/html/body/div[1]", "Bem vindo, Viviane Teste Cucumber!");
		
		
	}
	
	@Entao("^sou notificado que o nome da conta e obrigatorio$")
	public void souNotificadoQueONomeDaContaEObrigatorio() throws Throwable {
		cntM.validaMensagem("/html/body/div[1]", "Informe o nome da conta");
		
	}
	@Entao("^a conta e inserida com sucesso$")
	public void aContaInseridaComSucesso() throws Throwable {
	    cntM.validaMensagem("/html/body/div[1]","Conta adicionada com sucesso!");
		
	}
	
	
	@Entao("^sou notificado que a conta ja existe$")
	public void souNotificadoQueAContaJaExiste() throws Throwable {
		 cntM.validaMensagem("/html/body/div[1]","Já existe uma conta com esse nome!");
		 ;
		
	} 


	
	
}
