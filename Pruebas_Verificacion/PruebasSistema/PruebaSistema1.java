package PruebasSistema;

import java.util.regex.Pattern;
import java.io.File;
import java.util.concurrent.TimeUnit;
import org.junit.*;
import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.*;
import org.openqa.selenium.*;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.Select;

public class PruebaSistema1 {
  private WebDriver driver;
  private String baseUrl;
  private boolean acceptNextAlert = true;
  private StringBuffer verificationErrors = new StringBuffer();

  @Before
  public void setUp() throws Exception {
	  
	File file = new File("C:\\Users\\juanj\\workspace\\SegmentacionTemporal\\geckodriver.exe");
	System.setProperty("webdriver.gecko.driver", file.getAbsolutePath());  
    driver = new FirefoxDriver();
    baseUrl = "http://localhost:8080/";
    driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
  }

  @Test
  public void testPruebaSistema1() throws Exception {
    driver.get(baseUrl + "/Sport-Analytics/");
    driver.findElement(By.name("upload")).clear();
    driver.findElement(By.name("upload")).sendKeys("C:\\Users\\juanj\\Desktop\\Sport-Analytics\\Video.mp4");
    driver.findElement(By.cssSelector("button.button")).click();
    Thread.sleep(35000);
    System.out.println("Termino Sleep");
    
    //Esperar a que termine el sleep, y dejar en la pagina el alert que dice "Analisis finalizado"
    assertEquals("Analisis finalizado", closeAlertAndGetItsText());
  }

  @After
  public void tearDown() throws Exception {
    driver.quit();
    String verificationErrorString = verificationErrors.toString();
    if (!"".equals(verificationErrorString)) {
      fail(verificationErrorString);
    }
  }

  private boolean isElementPresent(By by) {
    try {
      driver.findElement(by);
      return true;
    } catch (NoSuchElementException e) {
      return false;
    }
  }

  private boolean isAlertPresent() {
    try {
      driver.switchTo().alert();
      return true;
    } catch (NoAlertPresentException e) {
      return false;
    }
  }

  private String closeAlertAndGetItsText() {
    try {
      Alert alert = driver.switchTo().alert();
      String alertText = alert.getText();
      if (acceptNextAlert) {
        alert.accept();
      } else {
        alert.dismiss();
      }
      return alertText;
    } finally {
      acceptNextAlert = true;
    }
  }
}
