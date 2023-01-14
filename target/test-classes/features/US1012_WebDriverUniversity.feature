
@wip
Feature: US1012 Window Testi

  Scenario: TC17 Kullanici yeni acilan window'u test edebilmeli


    Given kullanici "wduUrl" anasayfaya gider
    Then Login Portal Elementine kadar asagi iner
    Then Login Portal a tiklar
    Then acilan yeni window'a gecer
    And  username kutusuna deger yazar
    And  passwor kutusuna deger yazar
    Then login butonuna click yapar
    And  Popup’ta cikan yazinin validation failed oldugunu test eder
    And  OK diyerek popup i kapatir
    Then ilk sayfaya geri doner
    And  ilk sayfaya dondugunu test eder
    Then sayfayi kapatir
    And acilan tum sayfalari kapatir



