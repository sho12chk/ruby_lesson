class Food

  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

end

class Hyou
  # クラスメソッド
  def self.drawtable(food_list)

    # ヒアドキュメント
    text =<<~TEXT
    |No.\t|name\t|price\t|
    |------\t|------\t|------\t|
    TEXT

    # each.with_index：繰り返しの際インデックス番号も扱うことができる
    food_list.each.with_index(1) do |food, i|
      text += "|#{i}\t|#{food.name}\t|#{food.price}\t|\n"
    end

    # 戻り値
    text
  end
end

# 各データをハッシュに格納
food = Food.new("tohu", 58)
food2 = Food.new("bread", 160)
food3 = Food.new("miso", 368)

# ハッシュを配列に格納
food_list = [food, food2, food3]

puts Hyou.drawtable(food_list)
