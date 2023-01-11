@wip
Feature: US1005 Kullanici Configuration.Properties'de yazilan datalari parametre olarak kullanir

  # 3 Scenario olusturup , amazon,wisequarter ve walmart ana sayfalarina gidin
  # ve o anasayfalara gittigimizi test edin
  # parametre olarak kullanidigmiz kelimeler direk testte kullanilacak datalar olabilecegi gibi
  # configuration.properties de bulunan key'ler de olabilir
   # bu durumda stepdefinitions'da yolladigimiz key ile
  # configReader'daki getProperty() methodu kullanilip
  # configuration.properties dosyasindaki value testte kullanilabilir

  Scenario: TC6 Kullanici amazon sitesine gidisi test eder

    Given kullanici "amazonUrl" anasayfaya gider
    Then url de "amazon" oldgunu test eder
    And sayfayi kapatir

  Scenario: TC7 Kullanici wisequarter sitesine gidisi test eder

    Given kullanici "wqUrl" anasayfaya gider
    Then url de "wisequarter" oldgunu test eder
    And sayfayi kapatir


  Scenario: TC8 Kullanici walmart sitesine gidisi test eder

    Given kullanici "walmartUrl" anasayfaya gider
    Then url de "walmart" oldgunu test eder
    And sayfayi kapatir