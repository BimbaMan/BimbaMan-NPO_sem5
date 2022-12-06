package org.example;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import java.util.List;

// page_url = http://lyceum2.minsk.edu.by/
public class Tests {

    private static final String SCHOOL_URL ="http://lyceum2.minsk.edu.by/";

    public Tests(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }

    public static void main(String[] args) throws Exception {

        WebDriver webDriver = new FirefoxDriver();
        webDriver.get(SCHOOL_URL);
        webDriver.manage().window().maximize();
        Thread.sleep(500);

        webDriver.findElement(By.className("stranica_3")).click();
        Thread.sleep(500);





        webDriver.close();
    }
}