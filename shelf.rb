require 'date'
class Shelf

  def initialize(books)
    @books = books
  end

  def is_exist_book?(book_id)
    for book in @books
      if book.book_id == book_id
        return true
      end
    end
    return false
  end


  def rental_book(book_id,member_id)
    for book in @books
      if book.book_id == book_id
        @books.delete(book)
        rental_time = DateTime.now
        rental_limit = DateTime.now + 14
        rental = BookRental.new(member_id,book_id,rental_time,rental_limit,nil)
        return [book,rental]
      end
    end
    return puts "指定の図書IDの図書は存在しないか貸し出されています"
  end

  def return_book(book,rental)
    @books.push(book)

      return_date = DateTime.now
      rental.returndate(return_date)
      rental
  end
end
