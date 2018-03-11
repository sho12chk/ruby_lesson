#正方形の面積を求める
dimensions = [
  [20,30],
  [30,40],
  [40,10],
]

dimensions.each_with_index do |(length,width), i|
  puts " #{i}：#{length * width}"
end


#三角形の面積を求める
triangle = [
  [30,20],
  [40,22],
  [10,40]
]


triangle.each_with_index do |(width, height), i|
  puts "No.#{i}：底辺：#{width}、高さ：#{height}の三角形の面積は#{(width*height)/2}です"
end


#台形の面積を求める
trapezoid = [
  [30,20, 40],
  [40,22, 30],
  [10,40, 22]
]


trapezoid.each_with_index do |(upper_base, lower_base, height), i|
  puts "No.#{i}：上底：#{upper_base}、下底：#{lower_base}、高さ：#{height}の台形の面積は#{(upper_base+lower_base)*height/2}です"
end