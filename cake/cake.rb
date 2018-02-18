require './gateu_chocolat'
require './fondant_chocolat'
require './opera'

cake = ["ガトーショコラ", "オペラ", "フォンダンショコラ"]
selected_cake = cake.sample

puts "あなたが食べるのは#{selected_cake}です"

print "ケーキを食べる人数を入力してください："

num = gets.to_i

if selected_cake == "ガトーショコラ"
  cake = GateauChocolat.new(num: num)
elsif selected_cake == "オペラ"
  cake = Opera.new(num: num)
else
  cake = FondantChocolat.new(num: num)
end


puts cake.disp_ingredients