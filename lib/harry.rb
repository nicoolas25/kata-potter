require 'set'

module Harry
  extend self

  UNIT_PRICE = 8.00

  def price(books)
    make_groups(books).reduce(0) do |total, set|
      total + group_price(set)
    end
  end

  def make_groups(books)
    books.each_with_object([]) do |book, groups|
      if set = best_discount_set(groups, book)
        set << book
      else
        groups << Set.new([book])
      end
    end.tap { |o| puts o.inspect }
  end

  def best_discount_set(groups, book)
    groups.
      select { |set| !set.include?(book) }.
      min_by { |set| discount_amount(set) }
  end

  def discount_amount(set)
    group_price(set, offset: 1) - group_price(set)
  end

  def group_price(set, offset: 0)
    size = set.size + offset
    UNIT_PRICE * size * discount(size)
  end

  def discount(different_books)
    case different_books
    when 1 then 1.00
    when 2 then 0.95
    when 3 then 0.90
    when 4 then 0.80
    when 5 then 0.75
    else raise "Too many different books: #{different_books}"
    end
  end

end
