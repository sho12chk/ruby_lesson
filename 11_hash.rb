user = { id: 1, name: "かみざと", email: "k-sato@foo.xx.jp", address: "Tokyo" }

puts <<~TEXT

取り出したい値は何ですか？
1:なまえ
2:アドレス
3:住所
-----------------------
コマンドを入力
-----------------------

TEXT

command = gets.to_i

if command == 1
  text = user[:name]
elsif command == 2
  text = user[:email]
elsif command == 3
  text = user[:address]
else
  text = "値はありません"
end

puts text