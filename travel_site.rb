#旅行お申し込みサイト
puts <<~TEXT

こちらはネット予約サービスです

お申込み人数をご入力ください

TEXT

#申込み人数
print "大人："
adult = gets.chomp
print "子供："
child = gets.chomp
print "宿泊日数："

#宿泊日数
day = gets.chomp.to_i

#人数のデータを数字へ変換
adult_num = adult.to_i
child_num = child.to_i

#それぞれの料金
adult_price = 5000
child_price = 2000

#合計人数
sum_people_num = adult_num + child_num

#合計料金
sum_price = (adult_price * adult_num + child_price * child_num) * day


text = <<~TEXT

お申込み人数は#{sum_people_num}名様です

TEXT

if 5 <= sum_people_num
  sum_price *= 0.9
  text += "6名様以上のお申し込みなので料金は15％OFFとなります\n\n"
  if child_num >= 3
    text += "お子様フェア期間中につきランチにプリンを追加させていただきます\n\n"
  end
end

text += "合計金額は#{sum_price.round}円です\n"




puts text

