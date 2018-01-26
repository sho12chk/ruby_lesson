puts "カウントアップアプリ"
print "数字を入力してください："

max = gets.to_i

i = 1
num = 0

while i < max
  puts ""
  if  i % 3 == 0
    puts "#{i}っ！！！"
  else
    puts "#{i}です。"
  end

  i = i + 2

end
