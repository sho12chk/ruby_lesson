def hello(country:)
  if country == "日本"
    "「おはようございます！」"
  elsif country == "アメリカ"
    "Good morning!!"
  else
    "そんなコマンドはありません"
  end
end


def country(selected_country:)
  if selected_country == 1
    "日本"
  elsif selected_country == 2
    "アメリカ"
  end
end


puts <<~TEXT

あなたの出身地は？

1. 日本
2. アメリカ

1か2を選択してください

TEXT

command = gets.chomp.to_i

selected_country = country(selected_country: command)
#引数=> メソッドに渡す値

puts hello(country: selected_country)




