

Feature: US1011 Kullanici herokuApp sayfasinda butonlarin gorunur oldgunu test eder

  Scenario: TC16 Kullanici bekleyerek butonlarin gorunur olmasini saglar


    Given kullanici "herokuappUrl" anasayfaya gider
    Then Add Element butonuna basar
    Then Delete butonu gorunur oluncaya kadar bekler
    And  Delete butonunun gorunur oldugunu test eder
    Then Delete butonuna basarak butonu siler
    And  Delete butonunun gorunmedigini test eder





