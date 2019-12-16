package Runners;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions (
		          features = "src/test/resources/features/Barriga.feature",
		          glue = "Steps",
		          tags = {"@tipo3, @tipo2"},
		          plugin = "pretty",
                  monochrome = true,
                  snippets = SnippetType.CAMELCASE,
                  dryRun = false,
                  strict = false
		)
public class Rodar {
	
	

}
