package Runners;

import org.junit.BeforeClass;
import org.junit.runner.RunWith;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;

import cucumber.api.junit.Cucumber;



@RunWith(Cucumber.class)
@CucumberOptions (
		          features = "src/test/resources/features/Barrigas.feature",
		          glue = "Steps",
                  tags = "@addConta",
		          plugin = "pretty",
		        		  //"html:target/report-html" },
                  monochrome = true,
                  snippets = SnippetType.CAMELCASE
                 
		)
public class Rodar {
	
	public static  WebDriver driver;
	
	@BeforeClass
	public static void zera(){
	 System.out.println("Iniciando configurações de teste");
		 
		 driver = new ChromeDriver();
		 driver.get("https://seubarriga.wcaquino.me");
		 driver.findElement(By.id("email")).sendKeys("vivis@testevi.com.br");
		 driver.findElement(By.id("senha")).sendKeys("vivi123");
		 driver.findElement(By.tagName("button")).click();
		 driver.findElement(By.linkText("reset")).click();
		 driver.quit();
		 System.out.println("Finalizado configurações de teste");
		 
	}
	
	

}
