omikuji = ["大吉", "中吉", "小吉", "末吉", "大凶"]

while true
  puts "おみくじを引きますか?"
  puts "おみくじを引く => 1"
  puts "おみくじを引かない => 2"
  print "コマンドを入力："
  command = gets.to_i
  puts ""

  if command == 1
    puts "おみくじを引きます"
    sleep(2)
    puts omikuji[rand(omikuji.length)] + "です"
    sleep(2)
  elsif command == 2
    puts "おみくじを引きません"
    puts "処理を終了します"
    exit
  else
    puts "そんなコマンドはありません"
  end
  puts ""
end

=begin

```
大吉
中吉
小吉
末吉
```

=end