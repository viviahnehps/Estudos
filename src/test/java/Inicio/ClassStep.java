import cucumber.api.java.es.Dado;
import cucumber.api.java.it.Quando;
import cucumber.api.java.pt.Entao;

public class ClassStep {

    @Dado ("acesso o navegador")
    public void  abrirNavegador(){
     AcessoPage apg = new AcessoPage();	
    	apg.abrirNavegadorPage();
    }
    
    @Quando ("entro no site Orange") 
    public void  pegaURL(){
    	
    	     AcessoPage apg = new AcessoPage();	
    	    	apg.pegaURLPage();
    	
    }
    @Entao ("sistema exibe pagina inicial para login")
    public void  verificarPagina(){
    	{
    	     AcessoPage apg = new AcessoPage();	
    	    	apg.verificarPaginaPg();
    }
    	
    }
}
