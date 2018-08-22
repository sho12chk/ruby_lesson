require 'colorize'

# puts "Hello World!!".green
# puts "occurred error".red

# 変数
# 値を入れる箱のようなもの
# プログラマーが値を覚えなくて済む
# 値段　19880,　21789　=> 覚えてられない

# price = 20000
# price2 = 21789
#
# puts "商品1の値段：" + price.to_s + "円"
# puts "商品2の値段：" + price2.to_s + "円"
#
# puts "商品1の値段：#{price}円"
# puts "商品2の値段：#{price2}円"
#
# puts "success calculate".green

# ヒアドキュメント
# 複数行の文章を書くときに便利
#
# name = "suzuki"
#
# puts <<~TEXT
# ＜ヒアドキュメント＞
# こんにちは
#
# さようなら
#
# https://www.co.jp/#{name}/index.html
#
# TEXT
#
#
# puts "putsのみ".red
# puts "こんにちは".green
# puts "おはようございます".blue
# puts "さようなら".yellow

# ＜データ型＞
#
# integer => 整数
# float => 少数
# double => 少数
# string => 文字列
# text => 文章（長い文字列）

# 型変換
# データ型を変換する

num = "4"
num2 = "6"

puts num + num2

puts num.to_i + num2.to_i

# to_i => to integer （整数に変換）
