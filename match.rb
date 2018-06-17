text = "私の誕生日は1977年7月17日です"
m = /(\d+)年(\d+)月(\d+)日/.match(text)
p m[1]

text2 = <<~TEXT
私の誕生日は1977年7月17日です
私の誕生日は1930年4月22日です
TEXT

m = /(\d+)年(\d+)月(\d+)日/.match(text2)
p m ? "date : OK" : "mail : NG"

text3 = "私の誕生日は1977年7月17日です"
m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text3)
p m[:month]

text4 = "私の誕生日は2000年7月17日です"
if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text4
  puts "#{year}"
else
  "マッチするデータがありません"
end

text5 = "私の誕生日は二十年七月十七日です"
p /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text5 ? "#{year}/#{month}/#{day}" : "マッチするデータがありません"

text6 = "私の誕生日は2018年7月17日です"
p /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text6 ? "#{year}/#{month}/#{day}" : "マッチするデータがありません"

mail = "http:/example.com"
p %r{http://example.com}.match(mail) ? "mail : OK" : "mail : NG"