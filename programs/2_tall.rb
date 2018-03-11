while true

  puts "おみくじを引きますか？"
  puts "yes => y"
  puts "no => n"
  print "コマンドを入力："

  command = gets.chomp

  if command == "y"

    puts "おみくじを引きます"

    omikuji = rand(6)

    if omikuji == 1
      puts "大吉です"
    elsif omikuji == 2
      puts "中吉です"
    elsif omikuji == 0
      puts "吉です"
    else
      puts "小吉です"
    end

  elsif command == "n"
    puts "おみくじを引きません"
    puts "プログラムを終了します"
    exit
  else
    puts "そんなコマンドはありません"
  end

end



=begin
omikuji = ["大吉", "中吉", "小吉", "末吉", "凶"]
a = rand(5)
puts "#{omikuji[a]}です！"



=end