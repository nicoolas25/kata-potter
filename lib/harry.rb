require 'set'

module Harry

  class Cart

    def initialize(books)
      @books = books
      @groups = []
    end

    def best_price
      groups.reduce(0){ |sum, group| sum + group.price }
    end

    private

    def groups
      @books.each { |book| insert(book) }
      @groups
    end

    def insert(book)
      if group = group_to_insert(book)
        group << book
      else
        @groups << Group.new([book])
      end
    end

    def group_to_insert(book)
      @groups.
        select { |group| !group.include?(book) }.
        min_by { |group| step_difference(group) }
    end

    def step_difference(group)
      group.price(offset: 1) - group.price
    end

  end

  class Group < Set

    UNIT_PRICE = 8.00

    def price(offset: 0)
      size = self.size + offset
      UNIT_PRICE * size * discount(offset: offset)
    end

    private

    def discount(offset: 0)
      case size + offset
      when 1 then 1.00
      when 2 then 0.95
      when 3 then 0.90
      when 4 then 0.80
      when 5 then 0.75
      else raise "Too many different books: #{different_books}"
      end
    end

  end

end
