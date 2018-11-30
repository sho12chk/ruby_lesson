month = 6

# 比較対象をcaseの後に記述
case month
# 比較対象と比較する値を記述
when 3..5
  puts "春です"
when 6..8
  puts "夏です"
when 9..11
  puts "秋です"
when 12..2
  puts "冬です"
else
　puts "不正な値です"
end
