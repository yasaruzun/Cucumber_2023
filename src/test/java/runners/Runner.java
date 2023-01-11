package runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/resources/features",
        glue = "stepDefinitions",
        tags = "@wip",
        dryRun = false

)
public class Runner {

    /*
        Cucumber'da Runner class'i bos bir class'dir
        Runner class'ini diger class'lardan farkli kilan
        ve TestNG'deki xml dosyalari gibi calismasini saglayan
        2 adet notasyon mevcuttur


        @RunWith notasyonu projemize cucumber jUnit dependency eklememizin sebebidir
        Bu sayede runner class'larimiz cucumber ile calisir

        @CucumberOptions notasyonu ile istedigimiz ozellikleri Runner class'ina ekleyebiliriz
        Raporlama gibi ekstra option'lari da ileride ekleyecegiz
        Ancak
        oncelikli gorevi features dosyalari ile stepDefinitions java methodlarini
        iliskilendirmektedir

        tags: features klasoru icerisinde yazilan tag(lari) aratip buldugu
        tum feature veya senaryolari calistirir

        dryRun : iki deger alabilir
        true : secilirse, verilen tag ile isaretli olan Feature veya Senaryo'daki
                eksik stepDefinitions'lari bulup, ilgili methodlari olusturur
                hic bir sekilde testimizi calistirmaz
                eksik adim yoksa test passed olarak isaretler


         false: secilirse, verilen tag ile isaretlenen Feature veya senaryolari
                calistirir.

     */


}
