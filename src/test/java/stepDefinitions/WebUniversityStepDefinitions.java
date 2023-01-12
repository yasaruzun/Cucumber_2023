package stepDefinitions;

import io.cucumber.java.en.Then;
import pages.WebDriverPage;
import utilities.Driver;

import java.util.Set;

public class WebUniversityStepDefinitions {

    WebDriverPage webDriverPage=new WebDriverPage();

    String ilkSayfaWHD;

    @Then("Login Portal Elementine kadar asagi iner")
    public void login_portal_elementine_kadar_asagi_iner() {

    //asagi inmeye gerek kalmadi

    }
    @Then("Login Portal a tiklar")
    public void login_portal_a_tiklar() {
        ilkSayfaWHD= Driver.getDriver().getWindowHandle();
        webDriverPage.loginPortal.click();
    }
    @Then("acilan yeni window'a gecer")
    public void acilan_yeni_window_a_gecer() {
        //eger yeni window'a geciyorsa ,
        // yeni window acilmadan ilk sayfanin WHD'erini kaydetmeliyim

        Set<String> tumSayfaWHD = Driver.getDriver().getWindowHandles();

        String ikinSayfaWHD="";
        for (String each: tumSayfaWHD
             ) {
            if(!each.equals(ilkSayfaWHD)){
                each=ikinSayfaWHD;
            }

        }

        Driver.getDriver().switchTo().window(ikinSayfaWHD);



    }
    @Then("username kutusuna deger yazar")
    public void username_kutusuna_deger_yazar() {

    }
    @Then("passwor kutusuna deger yazar")
    public void passwor_kutusuna_deger_yazar() {

    }
    @Then("login butonuna click yapar")
    public void login_butonuna_click_yapar() {

    }
    @Then("Popup’ta cikan yazinin validation failed oldugunu test eder")
    public void popup_ta_cikan_yazinin_validation_failed_oldugunu_test_eder() {

    }
    @Then("OK diyerek popup i kapatir")
    public void ok_diyerek_popup_i_kapatir() {

    }
    @Then("ilk sayfaya geri doner")
    public void ilk_sayfaya_geri_doner() {

    }
    @Then("ilk sayfaya dondugunu test eder")
    public void ilk_sayfaya_dondugunu_test_eder() {

    }
}