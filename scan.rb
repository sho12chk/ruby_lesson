text = "私の誕生日は1977年7月17日です"
p text.scan(/\d+年\d+月\d+日/)

text2 = <<~TEXT
私の誕生日は1977年7月17日です
私の誕生日は2000年10月1日です
TEXT

birth_days = text2.scan(/\d+年\d+月\d+日/)

# birth_dayを格納する配列
formated_birth_days = []

# 1977年7月17日を1977/7/17の形式に直して配列に格納
birth_days.each do |birth_day|
  formated_birth_days << (/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ birth_day ? "#{year}/#{month}/#{day}" : "マッチするデータがありません")
end

# 置換したデータを表示
formated_birth_days.each.with_index(1) do |formated_birth_day, i|
  puts "No.#{i} 誕生日 #{formated_birth_day}"
end

birth_days2 = text2.scan(/(\d+)年(\d+)月(\d+)日/)
p birth_days2