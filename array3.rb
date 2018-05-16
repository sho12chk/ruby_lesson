#配列と繰り返し処理を組み合わせることで一度に大量のデータを利用できるようにする
#array(配列) & each(繰り返し処理)
#=> 配列の中身を取りだす

user_name = ["Yoshito", "Kamizato", "Yoko", "Hiroshi"]


puts "-------------------------------------"
puts "ユーザの名前を出力します"
puts "-------------------------------------"

user_name.each do |name|
  puts "#{name}さん"
end

puts "-------------------------------------"

puts "省略形"
#do、endを省略した書き方もできる
user_name.each {|name| puts "#{name}さん"}

puts "-------------------------------------"

user_name.each.with_index(1) { |name, i| puts "No.#{i}：#{name}さん" }

puts "-------------------------------------"
puts "join"
#配列の要素同士を連結して表示させることができる
#素の間に任意の文字を自由に入れることが可能
puts "#{user_name.join("と、")}がログインしています"

puts "-------------------------------------"

p user_name
#mapメソッド
#=> 新しい配列を生み出す
#=>  ["Yoshitoさん", "Kamizatoさん", "Yokoさん", "Hiroshiさん"]

san_name = user_name.map {|name| "#{name}さん"}
p san_name

puts "-------------------------------------"

san_name = user_name.map {|name| "#{name}さん"}

puts san_name

puts "-------------------------------------"

san_name = user_name.map { |name| "#{name}さん" }

puts san_name.join("と、")

puts "-------------------------------------"

puts user_name.map{|name| "#{name}さん"}.join("と、")

puts "-------------------------------------"

puts user_name.map{|name| "#{name}さん"}.join("と、") + "がログインしています"

=begin

=end