class Book

  attr_accessor :title, :rental, :return_date

  def initialize(title:)
    @title = title
    @rental = true
    @return_date = nil
  end

  def rental_possible?
    if @rental
      @rental = false
      "#{@title}は貸し出し可能です。返却予定日を入力して下さい。（記入例：4月21日）"
    else
      "#{@title}は貸し出し不可です。返却予定日は#{@return_date}です。"
    end
  end

  def set_return_date
    @return_date = gets.chomp
  end

  def return_possible?
    if @rental
      "#{@title}は返却済みです。"
    else
      @rental = true
      @return_date = nil
      "#{@title}を返却しました。"
    end
  end

  def rental_status
    "(レンタル中:返却予定日 #{return_date})" unless @rental
  end

end

book1 = Book.new(title:"スラムダンク")
book2 = Book.new(title:"ONE PIECE")
book3 = Book.new(title:"BECK")
book4 = Book.new(title:"シュタインズゲート")
book5 = Book.new(title:"あずきちゃん")

books = [book1,book2,book3,book4,book5]

while true

  puts <<~text
  0.レンタル
  1.返却
  ------------
  番号を選んで下さい
  text

  select_num = gets.chomp.to_i

  puts "------------------------"

  books.each_with_index do |book,n|
    puts "No.#{n}:#{book.title}#{book.rental_status}"
  end
  puts "------------------------"

  if select_num == 0
    puts "レンタル希望商品の番号を選択して下さい"

    num = gets.chomp.to_i

    puts books[num].rental_possible?

    books[num].set_return_date unless books[num].return_date

  else
    puts "返却する商品をお選び下さい"

    num = gets.chomp.to_i

    puts books[num].return_possible?
  end

end
