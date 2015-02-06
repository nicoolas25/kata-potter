Feature: Buying one book

  Scenario Outline:
    Given I pick one book: <name>
    Then I pay <price> $

  Scenarios:
      | name  | price |
      | book1 |     8 |
      | book2 |     8 |
      | book3 |     8 |
      | book4 |     8 |
      | book5 |     8 |


