# 配列
# 複数の値を格納できる変数
# => 一度に取り扱うことができるデータの量が増える
#
# damage = 10
# => 1つの値しか格納できない
#
#
# 複数の値を格納したいときに配列を使用する
#
# 例）商品の値段リスト
price_list = [1980, 300, 2980, 4260]

# puts price_list[0]
# puts price_list[1]
# puts price_list[2]
# puts price_list[3]
# puts price_list.first
# puts price_list.last

# puts price_list
#
# price_list.each do |price|
#   puts <<~TEXT
#     商品　¥#{price}
#   TEXT
# end
#
# puts price_list.join(",")

# high_price_list = []

high_price_list = price_list.select do |price|
  price > 2000
end

puts high_price_list

p [1, 2, 3, 4, 5, 6].select { |n| n % 2 == 0 }

# price_select = []
#
# # 100回処理を繰り返す
# 100.times do |price|
#   price_select << price
# end
#
# p price_select


# year_select = []
#
# 1900.upto(2000) do |price|
#   price_select << price
# end
#
# puts price_select


# ('aaaa'..'zzzz').each do |char|
#   p char
# end


# データ型
# integer => 整数
# float => 小数
# string => 文字列
# char => 文字（1文字）
# boolean => true or false


# pass = []
#
# ('aaaaaa'..'zzzzzz').each do |a|
#   pass << a
# end
#
# p pass.sample(3)
#
# names = ["suzuki", "saitou", "fnakoshi", nil]
#
# names.each do |name|
#   puts name&.upcase
# end

# program = ["Ruby", "PHP", "Java"]
#
# puts program
# puts program.join(",")

# price_list2 = %w(1980 300 2980 4260)
# puts price_list2
#
# price_list2.each{|price| puts "料金：#{price}"}
#
# price_list2 = %w(1980 300 2980 4260)
#
# price_list2.each.with_index(1) {|price, i| puts "料金#{i}：#{price}"}
#
# user_name = %w(鈴木 山下 佐藤)
# puts user_name

# price_list3 = [1980, 300, 2980, 4260]
# puts "2000円以上の値段を出力"
# puts price_list3.select{|price| price >= 2000}

# #正方形の面積を求める
# dimensions = [
#   [20,30],
#   [30,40],
#   [40,10],
# ]
#
# dimensions.each_with_index do |(length,width), i|
#   puts " #{i}：#{length * width}"
# end
#
#
# #三角形の面積を求める
# triangle = [
#   [30,20],
#   [40,22],
#   [10,40]
# ]
#
#
# triangle.each_with_index do |(width, height), i|
#   puts "No.#{i}：底辺：#{width}、高さ：#{height}の三角形の面積は#{(width*height)/2}です"
# end
#
#
# #台形の面積を求める
# trapezoid = [
#   [30,20, 40],
#   [40,22, 30],
#   [10,40, 22]
# ]
#
#
# trapezoid.each_with_index do |(upper_base, lower_base, height), i|
#   puts "No.#{i}：上底：#{upper_base}、下底：#{lower_base}、高さ：#{height}の台形の面積は#{(upper_base+lower_base)*height/2}です"
# end
