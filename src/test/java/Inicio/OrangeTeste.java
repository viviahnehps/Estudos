import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

public class OrangeTeste {
	@RunWith(Cucumber.class)
    @CucumberOptions(features = "src/test/java/Teste.feature", 
    		 glue = { "" }, monochrome = true, dryRun = false)
	
  public class OrangeTest{
		
	}
}
