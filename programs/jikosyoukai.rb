puts "はじめまして。あなたの名前は？"
name = gets.chomp
puts "ほほう" + name + "さんというんですね。"
puts "よろしくね" + name + "さん"

puts "苗字はなんていうのですか？"
name1 = gets.chomp
puts "えええええ,まさかあのシェフとして有名な" + name1 + name+ "だったりしますか"
puts "yes => y"
puts "no => n"
print "どっちか選んでね"

name1 = gets.chomp

sleep(3)

if name1 == "y"
	puts "やはり、そうでしたか！お会い出来て光栄です"
	puts "今はどちらでお店をされているんですか。"

	number = rand(3)

	if number == 1
		puts "銀座です"
	elsif number == 2
		puts "今はヨーロッパで和食料理のお店をしています。"
  elsif number == 0
		puts "北海道でお店をひらいています。"
  end

elsif name1 == "n"
	puts "違いましたか！同姓同名なんでてっきりそうかと思いましたよ！"
else
	puts "えっと・・・。なんていいましたか？"
end



















