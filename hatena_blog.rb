class Article
  attr_accessor :title, :body, :category
  def initialize(title:, body:, category:)
    self.title = title
    self.body = body
    self.category = category
  end
end

class Hatena
  attr_accessor :login, :article_status

  def initialize
    @articles = []
  end

  def operate

    puts <<~TEXT

    1：記事を書く
    2：記事を編集する
    3：記事を削除する

    TEXT

    print "選択："
    selected_operation = gets.chomp.to_i
    case selected_operation
    when 1
      create_article
    end
  end

  def create_article
    puts ""
    print "タイトルを入力してください："
    title = gets.chomp
    category_list = make_category_list
    print "本文を入力してください："
    body = gets.chomp

    @articles << Article.new(title: title, category: category_list, body: body)
  end

  def index_article
    articles_text = ""

    @articles.each.with_index(1) do |article, i|
      category_text = make_category_text(article)
      body_text = make_body_text(article)
      articles_text += <<~TEXT

      -----------------------------
      No.#{i} #{article.title}
      カテゴリー　#{category_text}

      本文
      -----------------------------
      #{body_text}
      -----------------------------


      TEXT
    end
    articles_text
  end

  private
    def make_category_list
      print "カテゴリーを入力してください："
      category_list = []
      category_list << gets.chomp
      loop do
        puts ""
        puts "他にカテゴリーを追加しますか？"
        puts "1：はい"
        puts "2：いいえ"
        print "選択："
        select = gets.chomp.to_i
        puts ""
        if select == 1
          print "カテゴリーを入力してください："
          category_list << gets.chomp
        elsif select == 2
          puts "カテゴリー選択を終了します"
          puts ""
          break
        else
          print "不正な値です"
        end
      end
      category_list
    end

    def make_category_text(article)
      article.category.join("、")
    end

    def make_body_text(article)
      if article.body.size < 30
        article.body
      else
        "#{article.body[0..25]}..."
      end
    end


end


hatena = Hatena.new

hatena.operate

puts hatena.index_article
