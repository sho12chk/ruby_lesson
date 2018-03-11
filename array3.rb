#繰り返し処理
#配列とよく組み合わせて使用されます
#array(配列) & each(繰り返し処理)
#=> 配列の中身を取りだす

user_name = ["Yoshito", "Kamizato", "Yoko", "Hiroshi"]


puts "-------------------------------------"
puts "ユーザの名前を出力します"
puts "-------------------------------------"

user_name.each {|name| puts "#{name}さん"}

puts "-------------------------------------"

user_name.each.with_index(1) { |name, i| puts "No.#{i}：#{name}さん" }

puts "-------------------------------------"

puts "#{user_name.join("、")}がログインしています"

puts "-------------------------------------"

san_name = user_name.map {|name| "#{name}さん"}

#mapメソッド
#新しい配列を生み出している
#=>  ["Yoshitoさん", "Kamizatoさん", "Yokoさん", "Hiroshiさん"]

puts san_name

puts "-------------------------------------"

san_name = user_name.map {|name| "#{name}さん"}

puts san_name

puts "-------------------------------------"

san_name = user_name.map { |name| "#{name}さん" }

puts san_name.join("と、")

puts "-------------------------------------"

puts user_name.map{|name| "#{name}さん"}.join("と、")




