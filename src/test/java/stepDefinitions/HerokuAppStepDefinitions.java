package stepDefinitions;

import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.NoSuchElementException;
import pages.HerokuAppPage;

public class HerokuAppStepDefinitions {

    HerokuAppPage herokuAppPage=new HerokuAppPage();

    @Then("Add Element butonuna basar")
    public void add_element_butonuna_basar() {

        herokuAppPage.addElementButonu.click();

    }
    @Then("Delete butonu gorunur oluncaya kadar bekler")
    public void delete_butonu_gorunur_oluncaya_kadar_bekler() throws InterruptedException {
    Thread.sleep(2000);



    }
    @Then("Delete butonunun gorunur oldugunu test eder")
    public void delete_butonunun_gorunur_oldugunu_test_eder() {
        Assert.assertTrue(herokuAppPage.deleteButonu.isDisplayed());
    }
    @Then("Delete butonuna basarak butonu siler")
    public void delete_butonuna_basarak_butonu_siler() {
        herokuAppPage.deleteButonu.click();

    }
    @Then("Delete butonunun gorunmedigini test eder")
    public void delete_butonunun_gorunmedigini_test_eder() {

        int flag=3;
        try {
            herokuAppPage.deleteButonu.click();
            Assert.assertFalse(flag==3);
            //exception olusmazsa bekledigimiz durum gerceklesmedi demektir
            //bu durumda test failed olmali
            //bunun icin 39 satirda failed olacak bir assertion yazdim

        } catch (NoSuchElementException e) {
           Assert.assertTrue(flag==3);
           //38 satirda delete butonu gorunmuyorsa exception olusur
            //bu bizim bekledimiz durum oldugundan testin passed gerekir
            //exception olusunda onu catch ile yakaladik ve
            //45.satirda passed olacak bir assertion yazdik
        }


    }


}
