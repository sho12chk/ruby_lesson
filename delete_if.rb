#空の配列を取り除く


stations = []
puts "駅名を入力してください"

stations << gets.chomp
stations << gets.chomp
stations << gets.chomp
stations << gets.chomp

selected_stations = stations.compact.delete_if(&:empty?)

text = ""

selected_stations.each_with_index do |station, i|
  text += "No.#{i+1}　#{station}\n"
end


puts <<~TEXT

あなたの選んだ駅は

#{text}

です。

TEXT