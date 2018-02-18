require "./yuusya.rb"
require "./slime.rb"

slime = Slime.new
yuusya = Yuusya.new

#slime.slime_attack(yuusya.hp)

#攻撃：スライム=>勇者
puts "スライムの攻撃"
yuusya.slime_attack(slime.attack)
puts yuusya.disp_hp

#攻撃：勇者=>スライム
puts "勇者の攻撃"
slime.yuusya_attack(slime.attack)
puts slime.disp_hp



#while true#

#  puts "スライムの攻撃"
#  yuusya.hp -= slime.attack
#  puts yuusya.hp
#  puts "勇者は死んだ" if yuusya.hp <= 0
#  exit if yuusya.hp <= 0#

#  puts "勇者の攻撃"
#  if rand(4) == 0
#    slime.hp -= yuusya.special_attack
#    puts "会心の一撃！！"
#  else
#    slime.hp -= yuusya.attack
#  end
#  puts slime.hp
#  puts "スライムは死んだ" if slime.hp <= 0
#  exit if slime.hp <= 0#

#end