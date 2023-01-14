
Feature: US1009 Yanlis kullanici adi ve password listesi ile negatif login testi
  
  Scenario Outline:TC14 yanlis kullanici listesi ile giris yapilamamali
    
    
    Given kullanici "qdUrl" anasayfaya gider
    And 2 saniye bekle
    Then ilk sayfa login linkine click yapar
    And cookieleri kabul edelim
    And kullanici kutusuna manuel olarak "<yanlisUsername>" yazar
    And password kutusuna manuel olarak "<yanlispassword>" yazar
    Then 2 saniye bekle
    And login butonuna basar
    And girisYapilamadiginiTestEder

    
    
    Examples:
      |yanlisUsername  |yanlispassword|
      |ilker           |mehmet@b.com  |
      |mehmet          |ilker@b.com   |
      |yasar           |yasar@b.com   |