#配列と似たようなもの
#ハッシュとはキーとバリューの組み合わせで値を格納するもの
#ユーザのリクエストデータから特定の値を取り出すときに使用する
#=> 主に投稿フォームから受け取ったデータ

user1 = {name: "Yoshito", email: "hoge@huga", tell: "09011111111" }
user2 = {name: "Emi", email: "hoge@huga", tell: "09011111111" }
user3 = {name: "Masato", email: "hoge@huga", tell: "09011111111" }
user4 = {name: "Yoko", email: "hoge@huga", tell: "09011111111" }
user5 = {name: "Akihito", email: "hoge@huga", tell: "09011111111" }

users = [user1, user2, user3, user4, user5]

puts "--------------------"

users.each do |user|
  puts user[:name]
end

puts "--------------------"

users.each do |user|
  puts user[:email]
end

puts "--------------------"

users.each do |user|
  puts user[:tell]
end

puts "--------------------"

puts users[0][:name]
puts users[1][:name]
puts users[2][:name]
puts users[3][:name]
puts users[4][:name]

puts "--------------------"

5.times do |i|
  puts users[i][:name]
end

puts "--------------------"

users.length.times do |i|
  puts users[i][:name]
end

puts "--------------------"

users.length.times {|i| puts users[i][:name]}

