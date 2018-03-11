name = "Kamizato"

puts name

puts "僕の名前は#{name}です"
puts "#{name}は寿司が好きです"
puts "#{name}はサッカー部でした"


puts <<~HEREDOC

僕の名前は#{name}です
#{name}は寿司が好きです
#{name}はサッカー部でした

HEREDOC


text = <<~HEREDOC

僕の名前は#{name}です
#{name}は寿司が好きです
#{name}はサッカー部でした

HEREDOC

text += <<~HEREDOC

今後とも宜しくお願いいたします。
#{name}でした。

HEREDOC

puts text


=begin

puts "名前を入れてください"
print "名前を入力："
name = gets.chomp
puts ""
puts "こんにちは！#{name}さん"
puts ""
puts "今日は半径の面積を求めましょう"
puts ""
print "円の半径を「半角で」入力してください："
number = gets.to_i
puts ""
print "求めた円の面積は"
print number ** 2 * 3.14
puts "です。"
puts ""
puts "お疲れ様でした。"




name = "神里"

puts "#{name}は30歳です"
puts "#{name}は沖縄出身です"
puts "#{name}は現在埼玉に住んでいます"
puts "#{name}はエンジニアです"



puts name


puts "神里は30歳です"
puts "神里は沖縄出身です"
puts "神里は現在埼玉に住んでいます"
puts "神里はエンジニアです"


puts "#{name}は30歳です"
puts "#{name}は沖縄出身です"
puts "#{name}は現在埼玉に住んでいます"
puts "#{name}はエンジニアです"


number = 5

puts number * number * 3.14
=end

#i:intager（数字）