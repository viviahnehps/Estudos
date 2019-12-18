package AulaStep;

import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;


public class BarrigaMap {
	
	public static WebDriver driver;
	
	public void Navegavador(){
		
		System.setProperty("webdriver.chrome.driver", "C:/Ferramentas/chromedriver.exe");    	
	    driver = new ChromeDriver();
	}

   public void siteUrl(String url){
   driver.get(url);		
	
    }
   
   public void validaPag(){
	String title = driver.getTitle();	 
   Assert.assertEquals("Seu Barriga - Log in", title);
   driver.close();
   }

	
}


