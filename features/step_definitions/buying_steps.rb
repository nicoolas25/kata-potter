Given /I pick one book: (.*)/ do |name|
  @books = [name]
end

Given /I pick the following books: (.*)/ do |names|
  @books = names.split(', ')
end

Given /^I pick the following books with quantities$/ do |books_table|
  @books = []
  books_table.map_column!('quantity') { |qty| qty.to_i }
  books_table.hashes.each do |hash|
    hash['quantity'].times do
      @books << hash['book']
    end
  end
end

Then /I pay (.*) \$/ do |price_str|
  expect(Harry.price(@books)).to eq price_str.to_f
end
