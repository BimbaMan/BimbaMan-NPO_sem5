package org.example;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import java.util.List;

// http://lyceum2.minsk.edu.by/
public class Tests {

        private static final String SCHOOL_URL = "http://lyceum2.minsk.edu.by/";

        public Tests(WebDriver driver) {
            PageFactory.initElements(driver, this);
        }


        public static void main(String[] args) throws Exception {
            WebDriver webDriver = new FirefoxDriver();
            webDriver.get(SCHOOL_URL);
            webDriver.manage().window().maximize();
            Thread.sleep(500);
            webDriver.findElement(By.id("versionForVisuallyImpaired")).click();
            Thread.sleep(1000);

            for (int i = 0; i < 10; i++) {
                webDriver.findElement(By.className("bx-next")).click();
                Thread.sleep(1500);
            }
            Thread.sleep(2000);

            webDriver.close();
        }

}
