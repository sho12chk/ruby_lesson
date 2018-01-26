print "名前を入力してください："
name = gets.chomp

print "今日は運動場を何周しますか？："

num = gets.to_i

i = 0

sumlap = 0

while i < num
	i = i + 1
	puts "#{i}周目"
	laptime = 40 + rand(11)
	puts "ラップタイム:#{laptime}秒"
	sumlap += laptime
end

average = sumlap / i

puts "#{name}は運動場を#{num}周走った。"
puts "平均タイム：#{average}秒"

if average < 45
	puts "いいペースです！この調子でいきましょう！"
else
	puts "もう少しトレーニングしましょう！"
end
