
Feature: US1006 Kullanici configuration dosyasindaki bilgiler ile login olabilmeli
  
  Scenario: TC09 geçerli kullanici adi ve sifre ile  pozitif login testi
    
    Given kullanici "qdUrl" anasayfaya gider
    Then ilk sayfa login linkine click yapar
    Then cookieleri kabul edelim
    Then 2 saniye bekle
    And kullanici kutusuna "qdGecerliUserName" yazar
    And  password kutusuna "qdGecerliPassword" yazar
    And cookieleri kabul edelim
    Then login butonuna basar
    And basarili giris yapildigini test eder

    