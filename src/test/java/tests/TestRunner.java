package tests;

import org.junit.BeforeClass;
import org.junit.runner.RunWith;

import com.intuit.karate.junit4.Karate;

@RunWith(Karate.class)
public class TestRunner {
	
	
	// utilizado em conjunto com o arquivo 'karate-config.js', foi comentado pois o c�digo base tamb�m est�.
	@BeforeClass
	public static void before() {
//		System.setProperty("karate.env", "qa");
		
	}

}
