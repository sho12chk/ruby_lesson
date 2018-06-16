# 変数
# 値を入れる箱のようなもの
#
# メリット
# 1. 値を使いまわすことができる
# 2. いちいち覚えなくて済む
# 3. 変更がしやすい

num1 = 100
num2 = 20

puts num1 + num2
puts num1 - num2
puts num1 * num2
puts num1 / num2

name = "神里"
age = 31
hobby = "フットサル"
skill = "Ruby"
job = "Programmer"

puts name
puts age
puts "#{name}は#{age}歳です"
puts "趣味は#{hobby}です"
puts "得意言語は#{skill}です"
puts "職業は#{job}です"


# ヒアドキュメント
text = <<~TEXT

ヒアドキュメント

#{name}は#{age}歳です
趣味は#{hobby}です
得意言語は#{skill}です
職業は#{job}です

TEXT

puts text
