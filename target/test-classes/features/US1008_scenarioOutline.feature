@smoke
Feature: US1008 Scenario Outline ile birden fazla data için test calistirma

  Scenario Outline: TC13 Scenario outline ile amazonda arama yapilabilmeli

    # Amazon ana sayfaya gidelim. Nutella ,Java,Samsung ve Apple için arama yapip
    # arama sonuclarinin aradigimiz kelimeyi icerdigini test edelim

    Given kullanici "amazonUrl" anasayfaya gider
    Then amazon arama kutusuna "<arananUrun>" yazip aratir
    And arama sonuclarinin "<arananUrun>" icerdigini test eder


    Examples:
      | arananUrun |
      | Nutella    |
      | Java       |
      | Samsung    |
      | Apple      |

