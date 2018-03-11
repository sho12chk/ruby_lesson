puts "今日の気温は何度ですか？"
print "今日の気温を入力："

temp = gets.to_i


puts "#{temp}度です"

if temp >= 50
  puts "そんな気温はあり得ません"
  puts "もう一度入力しなおしてください"
  exit
end




if temp > 30
  puts "暑いですね"
elsif temp >= 20 && temp >= 30
  puts "涼しいですね"
else
  puts "寒いですね"
end

weather = rand(3)

if weather == 0
  puts "今日の天気は雨です。"
  puts "最悪ですね！！"
elsif weather == 1
  puts "今日の天気は晴れです。"
  puts "最高ですね！！"
else
  puts "今日の天気は曇りです。"
  puts "微妙ですね。"
end

=begin
if temp > 30
  puts "暑いですね"
elsif temp >= 20 && temp >= 30
  puts "涼しいですね"
else
  puts "寒いですね"
end
=end

=begin
weather = rand(3)

if temp > 30
  puts "暑いですね"

  if weather == 0
    puts "今日の天気は雨です。"
    puts "最悪ですね！！"
  elsif weather == 1
    puts "今日の天気は晴れです。"
    puts "最高ですね！！"
  else
    puts "今日の天気は曇りです。"
    puts "微妙ですね。"
  end

elsif temp >= 20 && temp >= 30
  puts "涼しいですね"

  if weather == 0
    puts "今日の天気は雨です。"
    puts "最悪ですね！！"
  elsif weather == 1
    puts "今日の天気は晴れです。"
    puts "最高ですね！！"
  else
    puts "今日の天気は曇りです。"
    puts "微妙ですね。"
  end

else
  puts "寒いですね"

  if weather == 0
    puts "今日の天気は雨です。"
    puts "最悪ですね！！"
  elsif weather == 1
    puts "今日の天気は晴れです。"
    puts "最高ですね！！"
  else
    puts "今日の天気は曇りです。"
    puts "微妙ですね。"
  end

end

=end