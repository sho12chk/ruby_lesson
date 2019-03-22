# 好きな食べ物を選ぶプログラム

class Person
  FAVORITE_FOODS = ["チャーハン", "寿司", "ステーキ", "沖縄そば", "ゴーヤーチャンプル", "ポーク卵", "にじんしりしり"].freeze

  def correct_favorite_food?(selected_foods)
    correct_favorite_foods = FAVORITE_FOODS & selected_foods

    if correct_favorite_foods.empty?
      "僕の好きな食べ物はありません"
    else
      text_foods = correct_favorite_foods.join("と")

      <<~TEXT
      僕の好きな食べ物がありましたぁー！！！！！！！！
      僕の好きな食べ物は、#{text_foods}です。
      TEXT
    end
  end
end

kamizato = Person.new

puts kamizato.correct_favorite_food?(["シナモン", "パクチー", "チャーハン", "寿司"])
