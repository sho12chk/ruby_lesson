num = "abc12345def67890".gsub(/[^\d]/, "").to_i

puts num

num2 = "abc12345def67890".gsub(/[\d]/, "").to_i

puts num2

num3 = "abc12345def67890".gsub(/[\d]/, "").to_s

puts num3

num4 = "3143~34333".slice(/\d+~\d+/).to_i

puts num4

s = "3143~34333"

puts s.match(/\w+/)

s = "3143~34333"

puts s.match(/\d+~\d+/)
