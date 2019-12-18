package AulaStep;




import cucumber.api.Format;
import cucumber.api.Transform;
import cucumber.api.java.es.Dado;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import javax.management.RuntimeErrorException;
import org.junit.Assert;

import Converters.Conversor;
import cucumber.api.java.it.Quando;
import cucumber.api.java.pt.Ent�o;

public class BarrigaStep {
    
  BarrigaMap mpB = new BarrigaMap();
	
	@Dado("^abro no navegador$")
	public void abreNavegador() throws Throwable {
	 mpB.Navegavador();   	
	}

	@Quando("^acesso a site Sr barriga$")
	public void acessoSite() throws Throwable {
		mpB.siteUrl("https://seubarriga.wcaquino.me/login");
	}

	@Ent�o("^sistema apresenta pagina inicial Sr Barriga$")
	public void Inicial_Sr_Barriga() throws Throwable {
		mpB.validaPag();
	}


	private int contador = 0;
	
	@Dado("^que o valor do contador � (\\d+)$")
	public void que_o_valor_do_contador_�(int arg1) throws Throwable {
	     contador = arg1;
	    
	}

	@Quando("^quando incrementar em (\\d+)$")
	public void quando_incrementar_em(int arg1) throws Throwable {
	   contador = contador + arg1; 
	}

	@Ent�o("^valor do contador vai para (\\d+)$")
	public void valor_do_contador_vai_para(int arg1) throws Throwable {
	   Assert.assertEquals(contador, arg1);
	     
	}
	
	Date entrega = new Date();
	
	@Dado("^que a entrega � dia (.*)$")
	public void que_a_entrega_�_dia(@Transform(Conversor.class) Date data) throws Throwable {
	   entrega = data;
	   System.out.println("Data: "+entrega);
	}

	@Quando("^a entrega atrasar em (\\d+) (dia|dias|mes|meses)$")
	public void a_entrega_atrasar_em_dias(int arg1, String tempo) throws Throwable {
		   Calendar cal = Calendar.getInstance();
		    cal.setTime(entrega);
		    if(tempo.equals("dias")){
		    cal.add(Calendar.DAY_OF_MONTH,arg1);
	     }
           if(tempo.equals("meses")){
	        cal.add(Calendar.MONTH, arg1);
       }
 	    
	entrega = cal.getTime();
		
	}
	
	@Ent�o("^entao a entrega ser� efetuado em (\\d{2}\\/\\d{2}\\/\\d{4})$")
	public void entao_a_entrega_ser�_efetuado_em(String data) throws Throwable {
          DateFormat dft = new SimpleDateFormat("dd/MM/yyyy");
		 String dataFmt = dft.format(entrega);
				
		Assert.assertEquals(data,dataFmt);
		    
	}

	
//DESAFIO	
	@Dado("^que o ticket( especial)? � (A.\\d{3})$")
	public void que_o_ticket_�_AF(String tipo, String arg1) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	   
	}

	@Dado("^que o valor da passagem � R\\$ (.*)$")
	public void que_o_valor_da_passagem_�_R$(Double numero) throws Throwable {
	    
	}

	@Dado("^que o nome do passageiro � \"(.{5,20})\"$")
	public void que_o_nome_do_passageiro_�(String arg1) throws Throwable {
		
	   }

	@Dado("^que o telefone do passageiro � (9\\d{3} -\\d{4})$")
	public void que_o_telefone_do_passageiro_�(String telefone) throws Throwable {
	   
	}

	@Quando("^criar os steps$")
	public void criar_os_steps() throws Throwable {
	   }

	@Ent�o("^o teste vai funcionar$")
	public void o_teste_vai_funcionar() throws Throwable {
	   
	}

	
}