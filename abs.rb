def air_condition(current_temp,set_temp)
  text = "現在の気温は#{current_temp}度です\n"
  text += "設定温度は#{set_temp}度\n"

  ans = current_temp - set_temp
  abs_temp = ans.abs

  if ans > 0
    text += "温度を#{abs_temp}度下げます"
  elsif ans < 0
    text += "温度を#{abs_temp}度上げます"
  elsif ans == 0
    text += "設定温度です"
  end
  text
end


current_temp = 30

puts "------設定温度を変えてテスト------"
(25..35).each do |set_temp|
  puts <<~TEXT
  #{air_condition(current_temp, set_temp)}
  ---------------------------
  TEXT
end

set_temp = 30

puts "------気温を変えてテスト------"
(1..40).each do |current_temp|
  puts <<~TEXT
  #{air_condition(current_temp, set_temp)}
  ---------------------------
  TEXT
end
