
fruits = ["りんご", "バナナ", "みかん", "いちご", "キウイ"]
selected_fruits = fruits.length
price = fruits.length * 200

text = "選択いただいたフルーツは#{selected_fruits}個です\n"

if fruits.empty?
  text += "商品を選択してください"
else
  if selected_fruits >= 3
    price = price * 0.9

    text += <<~TEXT
      3個以上のお買い上げなので10％OFFさせていただきます
      お会計は#{price.round}円です
    TEXT

  else
    text += "お会計は#{price}円です\n"
  end
    text += "ありがとうございました"
end

puts text
