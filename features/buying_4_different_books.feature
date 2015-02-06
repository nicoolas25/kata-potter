Feature: Buying four books

  Scenario Outline:
    Given I pick the following books: <name1>, <name2>, <name3>, <name4>
    Then I pay <price> $

  Scenarios: Same four books
      | name1 | name2 | name3 | name4 | price |
      | book1 | book1 | book1 | book1 |    32 |
      | book3 | book3 | book3 | book3 |    32 |

  Scenarios: Two different books
      | name1 | name2 | name3 | name4 | price |
      | book1 | book2 | book1 | book2 |  31.2 |
      | book3 | book3 | book4 | book4 |  31.2 |

  Scenarios: Three different books
      | name1 | name2 | name3 | name4 | price |
      | book1 | book2 | book2 | book3 |  29.6 |
      | book3 | book4 | book5 | book3 |  29.6 |

  Scenarios: All different books
      | name1 | name2 | name3 | name4 | price |
      | book1 | book2 | book3 | book4 |  25.6 |
      | book2 | book3 | book4 | book5 |  25.6 |
