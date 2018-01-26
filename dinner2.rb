puts "今日も１日お疲れ〜"
puts "今日の夜ご飯はどうしよっかな〜？？"
puts "お肉とお魚だったらどっちの気分かなー？"
puts "お肉=>m"
puts "お魚=>f"
print "選んでねん＝>"

select = gets.chomp

if select == "m"
  dinner = "お肉"
elsif select == "f"
  dinner = "お魚"
else
  puts "そんなコマンドはありません"
end

puts "今日の夜ご飯のメインは"+dinner+"だよ！"

if select == "m"
	puts "OK~!お肉料理つくるね"

  number = rand(3)
  if number == 0
  	puts "鶏もも肉の蜂蜜煮に決まり！"
  elsif number == 1
  	puts "豚肉のアスパラ、チーズ巻きに決まり！"
  elsif number == 2
  	puts "ジンギスカンに決まり！"
  end

elsif select == "f"
	puts "OK！お魚ねん。焼こうかな〜煮ようかな〜"

	number = rand(3)
	if number == 0
		puts "鮭の塩焼きに決まり！"
  elsif number == 1
        puts "ぶり大根に決まり！"

  elsif number == 2
        puts  "鰆のムニエルに決まり！"

     end


else
  puts "え！両方とも気分じゃないのかな〜"
end








