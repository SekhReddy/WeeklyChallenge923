import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;
import io.cucumber.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/resources/features",
        glue = "src/test/resources/steps",
        plugin = {"pretty", "junit:target/JUnitReports/report.xml"},
        //dryRun = true
        strict = true
)
public class TestRunner {
}