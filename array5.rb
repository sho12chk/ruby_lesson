user_name = ["Yoshito", "Kamizato", "Yoko", "Hiroshi", "Oka"]

user_name.each do |name|
  puts "#{name}さん"
end

puts "-------------------------------"

#カウンタ変数を一緒に表示させたいときに便利！
#=> each.with_index
user_name.each.with_index do |name, i|
  print i
  puts name
end

puts "-------------------------------"


user_name.each.with_index do |name, i|
  print "社員No."
  print i
  puts "：#{name}さん"
end

puts "-------------------------------"

user_name.each.with_index do |name, i|
  puts "社員No.#{i}：#{name}さん"
end

puts "-------------------------------"

user_name.each.with_index do |name, i|
  puts "社員No.#{i+1}：#{name}さん"
end

puts "-------------------------------"

#最初の数を指定してカウントアップする書方
user_name.each.with_index(1) do |name, num|
  puts "社員No.#{num}：#{name}さん"
end

puts "-------------------------------"

#最初の数を指定してカウントアップする書方
#1行だけで書く => 省略形
user_name.each.with_index(1) {|name, num| puts "社員No.#{num}：#{name}さん" }


