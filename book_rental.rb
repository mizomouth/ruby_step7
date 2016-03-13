require 'date'
class BookRental
  attr_reader :member_id,:book_id,:rental_time,:rental_limit,:back_time,:return_date
  def initialize(
    member_id,book_id,rental_time,rental_limit,back_time
    )
    @member_id = member_id
    @book_id = book_id
    @rental_time = rental_time
    @rental_limit = rental_limit
    @return_date = return_date
  end

  def returndate(return_date)
      @return_date = return_date
  end
end
