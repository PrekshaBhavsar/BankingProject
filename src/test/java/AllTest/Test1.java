package AllTest;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.Assert;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

public class Test1 {
	
	WebDriver driver;
	
	@BeforeMethod
	public void Setup() throws IOException{
		
		System.setProperty("webdriver.chrome.driver", "chromedriver.exe");
		
		driver = new ChromeDriver();
		
		driver.get("http://localhost:8090/BankManagement");
		
		driver.manage().window().maximize();

		driver.manage().timeouts().implicitlyWait(5000, TimeUnit.MILLISECONDS);
		
	}
	
	@Test
	public void testcase1(){
		
		WebElement HomeLink = driver.findElement(By.id("home"));
		
		HomeLink.click();
		
		WebElement Welcome = driver.findElement(By.id("Welcome"));
		
		String WelcomeText = Welcome.getText();
		String ExpText = "Welcome to ICNI Bank";
		
		Assert.assertEquals(WelcomeText, WelcomeText);
		
		driver.quit();
		
	}

}
