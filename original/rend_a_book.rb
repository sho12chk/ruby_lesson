=begin
図書館プログラム完成しました。以下、機能
①本を五十音順で分類し、検索できるようにしました。
②本に先頭の文字の属性を与えることで、五十音順のハッシュに入れられます。
③本のレンタル状況の属性も与えられます。表示も可能です。
④当日、誰が何を借りたかを記憶できるようにしました。合計貸し出し数も計算できます。
=end

# CLASS定義
class Book
    attr_accessor :name,:initial,:status
    STATUS_INSTOCK  = 0
    STATUS_RENTALED = 1
    STATUS_DISPOSAL = 99

    def initialize(name:,status:,initial:)
     @name    = name
     @initial = initial
     @status  = status
    end
end


class Search
    attr_accessor :items, :index

    def initialize(items:)
        @lastid = 1
        @items = {}
        @index = Hash.new { |h, k| h[k] = [] }
        items.each do |item|
            addItem(item:item)
        end
    end

    def getIndexList()
        @index
    end

    def getItemById(id:)
        @items.has_key?(id) && @items.fetch(id).status == Book::STATUS_INSTOCK ? @items.fetch(id) : nil
    end

    private
    def addItem(item:)
        id = format('#%06d', @lastid)
        @items.store(id,item)
        @lastid += 1

        stock = {key: id, item: item}
        @index[item.initial].push(stock)
    end
end

# 貸出表示
def state_str(state:)
  str = { Book::STATUS_INSTOCK  => "レンタル可能",
          Book::STATUS_RENTALED => "貸出中",
          Book::STATUS_DISPOSAL => "廃棄処分"}

  str[state]
end

# 在庫一覧表示
def disp_stoc(list:)
  list.each do |key, item|
      puts "■ #{key}行 #{item.count}冊"
      item.each do |val|
         key  = val[:key]; item = val[:item];
         puts "  #{key} - #{item.name} - #{state_str(state: item.status)}"
      end
  end
end


#########################
# メイン処理
#########################
#在庫の登録
books = []
books << Book.new(name:"罪と罰",initial:"た",status: Book::STATUS_INSTOCK)
books << Book.new(name:"ライ麦畑でつかまえて",initial:"ら",status: Book::STATUS_INSTOCK)
books << Book.new(name:"羅生門",initial:"ら",status: Book::STATUS_RENTALED)
bookSearch = Search.new(items: books)


#在庫一覧の表示
list = bookSearch.getIndexList()

puts "【在庫状況】"
disp_stoc(list: list)
puts "============"

#書籍の選択
puts "書籍番号(#〇〇〇〇〇〇)を入力してください。"
select = gets.chomp
item = bookSearch.getItemById(id: select)
puts item ? "『#{item.name}』を貸し出します。"
     : "在庫がありません、またのご利用をお待ちしております。"

__END__
