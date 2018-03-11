require "./method"

mac1 = Mac.new(name: "MacBook Air", price: 98800)
mac2 = Mac.new(name: "MacBook Pro", price: 142800)
mac3 = Mac.new(name: "iMac", price: 12800)
mac4 = Mac.new(name: "iMac Pro", price: 558800)

mac = [mac1, mac2, mac3, mac4]

puts "どのPCを買いますか？"

index = 0

mac.each do |mac|
  puts "#{index}: #{mac.name} #{mac.price}円"
  index += 1
end

puts <<~HEREDOC

購入されるMacの番号を選択してください

HEREDOC


print "番号を入力："
order = gets.chomp.to_i

selected_mac = mac[order]

puts <<~HEREDOC

#{selected_mac.name}ですね
お値段は#{selected_mac.price}円です

いくつ購入されますか?
3個以上のお買い上げで10％OFFとさせていただきます

HEREDOC

print "注文数を入力："
num_mac = gets.to_i

puts <<~HEREDOC

#{selected_mac.get_total_price(num_mac)}

HEREDOC

