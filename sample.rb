#配列を繰り返し処理で取り出す
#=> 一度に大量のデータを扱えるようになる

5.times {|i| puts i}


user = ["Kamizato", "Suzuki", "Satou", "Yamada", "Suzuki"]

puts "配列の要素数：#{user.length}"

puts "---------------------------------"

puts "each 通常"
#Rubyの繰り返し処理でよく使用する
user.each do |name|
  puts name
end


puts "---------------------------------"

puts "each 省略"
#each文をもっとシンプルに書く
user.each {|name| puts name}

puts "---------------------------------"

#数字を添えて繰り返し処理を実行

user.each.with_index do |name,i|

  puts "会員No.#{i}：#{name}さん"

end

puts "---------------------------------"


#開始する数字を固定して繰り返し処理を実行

user.each.with_index(1) do |name,i|

  puts "会員No.#{i}：#{name}さん"

end

puts "---------------------------------"
i = 0

while i < user.length
  puts user[i]
  i += 1
end

puts "---------------------------------"

for num in 0..user.length
  puts user[num]
end
