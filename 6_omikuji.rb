answer = "y"


if "y" == answer

  puts "おみくじひいちゃうよ"
  omikuji = rand(4)

  if 0 == omikuji
    puts "大吉です"
  elsif 1 == omikuji
    puts "中吉です"
  elsif 2 == omikuji
    puts "吉です"
  else
    puts "大大凶です。ざまあ"
  end


else
  puts "ひいてたまるか"
end

