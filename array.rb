# 配列
# 複数の値を格納できる変数
# => 一度に取り扱うことができるデータの量が増える
#
# damage = 10
# => 1つの値しか格納できない
#
# 複数の値を格納したいときに配列を使用する
# 例）商品の値段リスト
price_list = [1980, 300, 2980, 4260]

puts "プライスリストを表示します"
puts price_list


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

price_list3 = [1980, 300, 2980, 4260]
puts "2000円以上の値段を出力"
puts price_list3.select{|price| price >= 2000}

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
