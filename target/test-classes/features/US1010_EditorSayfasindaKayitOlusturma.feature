
Feature: US1010 Kullanici Scenario outline ile editor sayfasinda kayit olusturur


  Scenario Outline: TC15 Editor sayfasinda birden fazla kayit olusturabilmeli



    When kullanici "editorUrl" anasayfaya gider
    Then new butonuna basar
    And First name kutusuna "<firstName>" yazar
    And Last name kutusuna "<lastName>" yazar
    And position kutusuna "<position>" yazar
    And Office kutusuna "<office>" yazar
    And Extension kutusuna "<Extension>" yazar
    And Start date kutusuna "<startDate>" yazar
    And Salary kutusuna "<salary>" yazar
    And Create tusuna basar
    When kullanici "<firstName>" ile arama yapar
    Then isim bolumunde "<firstName>" oldugunu dogrular
    And 2 saniye bekle



    Examples:
      | firstName |lastName|position|office  |Extension|startDate |salary|
      | mehmet    |ahmet   |qa      |Samsun  |carsamba |2021-01-01|20000 |
      | ruveyda   |can     |qa      |Ankara  |mamak    |2021-01-01|20000 |
      | sare      |lead    |qa      |istanbul|levent   |2021-01-01|30000 |
      | abdullah  |mehmet  |qa      |istanbul|levent   |2021-01-01|20000 |
      | musab     |koc     |qa      |istanbul|levent   |2021-01-01|50000 |