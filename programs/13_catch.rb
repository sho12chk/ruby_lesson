

while true
  puts "おみくじを引きますか？"
  puts "yes => y"
  puts "no => n"
  print "コマンドを入力してください："
  command = gets.chomp

  if command == "y"
    omikuji = rand(3)

    case omikuji
    when 0 then
      puts "大吉です"
    when 1 then
      puts "中吉です"
    when 2 then
      puts "小吉です"
    end
  elsif command == "n"
    puts "おみくじを引きません"
    exit
  else
    puts "そんなコマンドはありません"
  end
end