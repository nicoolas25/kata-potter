Feature: Buying more books

  Scenario:
    Given I pick the following books with quantities
      | quantity | book  |
      |        2 | book1 |
      |        2 | book2 |
      |        2 | book3 |
      |        1 | book4 |
      |        1 | book5 |
    Then I pay 51.20 $

  Scenario:
    Given I pick the following books with quantities
      | quantity | book  |
      |        2 | book1 |
      |        2 | book2 |
      |        1 | book3 |
      |        1 | book4 |
      |        1 | book5 |
    Then I pay 45.20 $
