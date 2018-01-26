user = { id: 1, name: "かみざと", email: "k-sato@foo.xx.jp", address: "Tokyo" }

puts "取り出したい値は何ですか？"
puts "1:なまえ"
puts "2:アドレス"
puts "3:住所"
puts "-----------------------"
print "コマンドを入力"
puts "-----------------------"
command = gets.to_i

if command == 1
  p user[:name]
elsif command == 2
  p user[:email]
elsif command == 3
  p user[:address]
else
  p "値はありません"
end