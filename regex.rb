
num = "abc12345def67890".gsub(/[^\d]/, "").to_i

puts num

not_num = "abc12345def67890".gsub(/[\d]/, "")

puts not_num

like_array = "\[\"ruby\"\, \"java\"\, \"php\"\]".gsub(/[^\w,]/, "")

puts like_array

s = "3143~34333"

puts s.match(/\w+/)

s = "3143~34333"

puts s.match(/\d+~\d+/)

if '123-4567' =~ /\d{3}-\d{4}/
  puts 'マッチしました'
else
  puts 'マッチしませんでした'
end

input_lines = "AEGIOSZ"
puts input_lines.gsub(/[AEGIOSZ]/,"A"=> "4","E"=> "3","G"=> "6","I"=> "1","O"=>"0","S"=>"5","Z"=>"2" )