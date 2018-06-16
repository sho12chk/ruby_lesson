require "date"

puts "何月何日の週報を作成しますか？"
print "月を入力："
imonth = gets.to_i
print "日付を入力："
iday = gets.to_i

#日付オブジェクトの作成
this_day = Date.new(2018, imonth, iday)

#年月日を変数に格納
this_year = this_day.year
this_month = this_day.month

#従業員名
user_name = "神里亮人"

#日付オブジェクトを格納する配列
weeks = []

#日付を格納する配列
days = []

#それぞれの曜日に該当する日付オブジェクトを配列に代入
1.upto(5) do |i|
  weeks << this_monday = this_day - (this_day.wday - i)
end

#それぞれの曜日の日付を代入
weeks.each.with_index do |week, i|
  days << weeks[i].day
end


this_monday_date = weeks[0].day
this_friday_date = weeks[4].day

job_name = "インストラクター"
job_start_time = "10:00"
job_end_time = "19:00"

puts <<~TEXT
=========================================================

【業務週報】　#{user_name}　#{this_year}/#{this_month}/#{this_monday_date}〜#{this_month}/#{this_friday_date}

各位

#{this_month}月#{this_monday_date}日からの週報です。
定時　10:00~21:30

＜時間・作業内容＞
TEXT

5.times do |i|
  puts "#{this_month}/#{days[i]} （#{%w(日 月 火 水 木 金 土)[weeks[i].wday]}）8.0H #{job_name}"
end

puts <<~TEXT

＜作業詳細＞
Ruby/Railsの講座開発
以下のカリキュラムに関する授業、質疑応答

Java/Spring/Hibernate
VB/VBDB
Excel VBA
PHP
Oracle SQL
MySQL
Ruby/Ruby on Rails

＜困っていること＞
特になし

＜利用している技術＞
Java/Spring/Hibernate
VB/VBDB
Excel VBA
PHP
Oracle SQL
MySQL
Ruby/Ruby on Rails

＜連絡事項＞
特になし

＜現在設定している目標＞
新規受講生の獲得

TEXT
