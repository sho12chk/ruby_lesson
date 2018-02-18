num = "1"

num2 = "3"


puts num + num2

puts num.to_i + num2.to_i


num3 = 3

num4 = 5

puts num3.to_s + num4.to_s


puts " 1 + 3 "

num5 = 199999 + 3542542353
num6 = 199999 + 354254423423
num7 = 199999 + 354241431
num8 = 199999 + 35424123413


puts ""
puts ""
puts ""
puts ""


puts <<~HEREDOC

num5の計算結果は#{num5}です
num6の計算結果は#{num6}です
num7の計算結果は#{num7}です
num8の計算結果は#{num8}です

HEREDOC




