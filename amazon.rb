birth_month = 4
price = 1000
time = 14

puts "お買い上げありがとうございます"

if price >= 5000
  puts "5000円以上のお買い上げなので、合計金額から1割引させていただきます"
  price *= 0.9

  if birth_month == 2
    puts "おめでとうございます！今月が誕生日の方は合計金額からさらに1割引させていただきます！！"
    price *= 0.9
  end

else
  puts "通常料金でのお支払いになります"
end

puts "お値段は#{price.round}円です"

puts "タイムセール開催中！合計金額からさらに1割引させていただきます！" if time == 14

#配列
#複数のデータを格納できる箱のようなもの
#=> 複数のデータを格納できる変数

price = [1000,3000,4000,5000,5200,1000,6000,6000,6000,6000,6000,6000,6000,6000,6000,6000,6000]
#=> 0,1,2,3,4

#繰り返し処理
#指定した処理を指定した回数だけ繰り返す

sum_price = 0


#puts price[0] + price[1] + price[2]

price.each do |num|
  sum_price += num
end


puts sum_price