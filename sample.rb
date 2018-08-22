
require 'colorize'

puts "データのインポートを開始します"

sleep(3)

num = rand(2)

if num == 1
  puts "インポートが成功しました".green
else
  puts "インポートが失敗しました".red
end
