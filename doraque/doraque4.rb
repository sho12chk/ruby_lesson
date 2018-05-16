=begin
継承
クラスの特徴を全て受け継ぎ、新しいクラスでもその情報や機能を扱えるようにする

継承元　=> 親クラス（スーパークラス）
継承先　=> 子クラス（サブクラス）

サブクラスはスーパークラスの持っている情報や機能を全て扱えるようになる
=> 継承とは元クラスの特徴を他のクラスで受け継ぐ

Chara => Brave, Slime => 行いたい処理
=end



require "./brave4.rb"
require "./enemy4.rb"


brave = Brave.new("Kami",10, 10, 5, 3)
slime = Slime.new("すらぼう",9, 10, 3, 2)


puts <<~TEXT

コマンドを入力

たたかう：1
特技：2
逃げる：3

TEXT

command = gets.to_i

if command == 1
  puts brave.normalAttack(slime)
elsif command == 2
  puts brave.specialAttack(slime)
elsif command == 3
  exit
end

exit if slime.hp <= 0


puts slime.specialAttack(brave)
