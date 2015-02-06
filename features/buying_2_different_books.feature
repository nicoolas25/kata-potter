Feature: Buying two books

  Scenario Outline:
    Given I pick the following books: <name1>, <name2>
    Then I pay <price> $

  Scenarios: Same book
      | name1 | name2 | price |
      | book1 | book1 |    16 |
      | book3 | book3 |    16 |
      | book4 | book4 |    16 |

  Scenarios: Different books
      | name1 | name2 | price |
      | book1 | book2 |  15.2 |
      | book2 | book3 |  15.2 |
      | book4 | book5 |  15.2 |


