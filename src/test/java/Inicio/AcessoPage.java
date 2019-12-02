package Inicio;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import cucumber.api.java.es.Dado;
import cucumber.api.java.it.Quando;
import cucumber.api.java.pt.Entao;

public class AcessoPage extends OrangeElementMap{
	
	public static WebDriver driver;
	
	
	
	    public void  abrirNavegadorPage(){
	    System.setProperty("webdriver.chrome.driver", "C:/Ferramentas/chromedriver.exe");    	
	    driver = new ChromeDriver();
	    	
	    }
	    
	    public void  pegaURLPage(){
	    String url= "https://opensource-demo.orangehrmlive.com/";
	    driver.get(url);
	    
	    }
	    public void verificarPaginaPg(){
	    	
	    	String page = driver.getTitle();
	  Assert.assertEquals ("OrangeHRM", page.toString());  
	       driver.close();
	    
	    }
}
