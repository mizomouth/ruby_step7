require_relative 'book' #図書
require_relative 'shelf' #本棚
require_relative 'member' #会員
require_relative 'book_rental' #図書貸出

# 下準備
hobby_1 = Book.new('1', '趣味の本1', 'xxxx-xxxx')
hobby_2 = Book.new('2', '趣味の本2', 'xxxx-yyyy')
novel_1 = Book.new('3', '小説1', 'xxxx-zzzz')
shelf = Shelf.new([hobby_1, hobby_2, novel_1])

# 会員
member = Member.new('1', 'ドヤオタクロウ')

#本が存在するか問い合わせる
if !shelf.is_exist_book?('4')
  puts '先輩側は俺たちより年上？'
end

shelf.rental_book('9', member.member_id)

#----------------------------------------------------------------------

if shelf.is_exist_book?('3')
  book, rental = shelf.rental_book('3', member.member_id) # 戻り値は、図書と図書貸出のオブジェクト
  puts "#{book.title} を借りました!"
  puts "返却期限は #{rental.rental_limit.to_s} です。"

  #返却
  rental = shelf.return_book(book, rental)
  puts "返却したのは #{rental.return_date.to_s} です。"

end
