class Book
  attr_reader :book_id,:title,:isbn_code
  def initialize(book_id,title,isbn_code)
    @book_id = book_id
    @title = title
    @isbn_code = isbn_code
  end
end
