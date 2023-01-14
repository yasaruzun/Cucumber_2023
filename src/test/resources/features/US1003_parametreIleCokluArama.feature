
Feature: US1003 Kullanici parametre olarak girilen degerleri aratir

  @p1
  Scenario: TC03 Kullanici Parametreli method ile nutella aratir

    Given kullanici amazon anasayfaya gider
    Then amazon arama kutusuna "Nutella" yazip aratir
    And arama sonuclarinin "Nutella" icerdigini test eder
    And sayfayi kapatir

  @p2
    Scenario: TC04 Kullanici parametreli method ile Java aratir
      Given kullanici amazon anasayfaya gider
      Then amazon arama kutusuna "Java" yazip aratir
      And arama sonuclarinin "Java" icerdigini test eder
      And sayfayi kapatir