package Steps;

import java.util.concurrent.TimeUnit;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class ContaMap {

		
		public static  WebDriver driver;
		
		public void openNavegavador(){
			
			System.setProperty("webdriver.chrome.driver", "C:/Ferramentas/chromedriver.exe");    	
		    driver = new ChromeDriver();
		   
			  
		}

	   public void barrigaUrl(String url){
	   driver.get(url);		
		
	    }
	   
	   public void preencheCampo (String id,String valor){
		   driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
		   driver.findElement(By.id(id)).sendKeys(valor);
			}
	   
	   public void clicaLink (String link){
			driver.findElement(By.linkText(link)).click();
	   }
	   public void clicaBtn (String btn){
			driver.findElement(By.xpath((btn))).click();
		   }
	   
	  
	   public void validaPag(String mensagem){
		String title = driver.getTitle();	 
	    Assert.assertEquals(mensagem, title);
	
	   }
	   
	   public void validaMensagem(String name, String msg){
		   String aux = driver.findElement(By.xpath(name)).getText(); 
		    Assert.assertEquals(msg,aux);
		   
		   
	   }
 
	  
	   
	   public void fechaNavegador(){
		   driver.quit();
	   }
	}


