
num = "abc12345def67890".gsub(/[^\d]/, "").to_i

puts num

not_num = "abc12345def67890".gsub(/[\d]/, "")

puts not_num

like_array = "\[\"ruby\"\, \"java\"\, \"php\"\]".gsub(/[^\w,]/, "")

puts like_array

s = "3143~34333"

puts s.match(/\w+/)

s = "3143~34333"

puts s.match(/\d+~\d+/)

if '123-4567' =~ /\d{3}-\d{4}/
  puts 'マッチしました'
else
  puts 'マッチしませんでした'
end

input_lines = "AEGIOSZ"
puts input_lines.gsub(/[AEGIOSZ]/,"A"=> "4","E"=> "3","G"=> "6","I"=> "1","O"=>"0","S"=>"5","Z"=>"2" )

#指定した文字列にて大文字の数をカウントし、カウントした数のアルファベットで構成された単語にモザイク音を入れるプログラム

####################
# 関数定義
####################
waitsec = 3

def count_upcase_spell(big_spells)      #文字列をカウントする関数
     str = big_spells.join
     str.length
end

def mosaic_by_count(hidden_count,hidden_word)           #大文字の数=単語に、モザイク音を入れる関数
     (hidden_count >= 1) ? hidden_word.gsub(/(\s|^)\w{#{hidden_count}}(\s|$)/i," ピーッ ") : "今回は命拾いしたな"
end

######################
#メインコード
######################

word = "Welcome To the Jungle"
upcase_str = word.scan(/[A-Z]/)     #大文字をスキャンするメソッド
count = count_upcase_spell(upcase_str)

puts "#{word}から大文字を抜き出します！"
upcase_str.each{|spell|print spell,"\n"; sleep(1)}


print "大文字の数をカウントして、カウントした数のアルファベットで構成された単語にモザイク音を入れます!"
waitsec.times do print "." ; sleep(1); end
print "#{mosaic_by_count(count,word)}!\n"

################
#_END_
################
