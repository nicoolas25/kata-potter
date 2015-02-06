Feature: Buying three books

  Scenario Outline:
    Given I pick the following books: <name1>, <name2>, <name3>
    Then I pay <price> $

  Scenarios: Same three books
      | name1 | name2 | name3 | price |
      | book1 | book1 | book1 |    24 |
      | book3 | book3 | book3 |    24 |

  Scenarios: Two different books
      | name1 | name2 | name3 | price |
      | book1 | book2 | book2 |  23.2 |
      | book3 | book3 | book4 |  23.2 |

  Scenarios: All different books
      | name1 | name2 | name3 | price |
      | book1 | book2 | book3 |  21.6 |
      | book3 | book4 | book5 |  21.6 |


