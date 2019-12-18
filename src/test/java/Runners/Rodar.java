package Runners;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions (
		          features = "src/test/resources/features/Barrigas.feature",
		          glue = "Steps",
                  tags = "@addContaJaExi",
		          plugin = "pretty",
		        		  //"html:target/report-html" },
                  monochrome = true,
                  snippets = SnippetType.CAMELCASE
                 
		)
public class Rodar {
	
	

}
