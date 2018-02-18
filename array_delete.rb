
array = ["桶川", "北本", "鴻巣", nil, ""]

#配列からnilを消す
#array.compact!

#array.reject(&:empty?)

#配列が空文字だったら削除
array.delete_if(&:nil?).delete_if(&:empty?)
#array.delete_if(&:empty?)

puts array

=begin
array.map do |n|
  puts n.upcase
end

puts array.map {|n| n.upcase }

puts array.map(&:upcase)
=end

