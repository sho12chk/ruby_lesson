require "./method"

text = <<~HEREDOC
どのPCを買いますか？
MacBook Air => 1
MacBook Pro => 2
iMac        => 3
iMac Pro    => 4
番号を入力してください：
HEREDOC

pc = gets.to_i

case pc
when 1
  pc_name = "MacBook Air"
  pc_price = 98800
when 2
  pc_name = "MacBook Pro"
  pc_price = 142800
when 3
  pc_name = "iMac"
  pc_price = 12800
when 4
  pc_name = "iMac Pro"
  pc_price = 558800
end

menu1 = Menu.new(name: pc_name, price: pc_price)

puts menu1.info

puts "いくつ買いますか？"
puts "3個以上のお買い上げで10％OFFになります。"
print "個数を入力："
count = gets.to_i

puts menu1.get_total_price(count)
