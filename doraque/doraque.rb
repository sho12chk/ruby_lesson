require "./yuusya.rb"
require "./slime.rb"

slime = Slime.new
yuusya = Yuusya.new

while true
  #攻撃：スライム=>勇者
  puts <<~TEXT

  スライムの攻撃
  勇者のHPは#{slime.slime_attack(yuusya)}だ

  TEXT

  exit if yuusya.disp_hp <= 0
  sleep(2)

  #攻撃：勇者=>スライム
  puts <<~TEXT

  勇者の攻撃
  スライムのHPは#{yuusya.yuusya_attack(slime)}だ

  TEXT

  exit if slime.disp_hp <= 0
  sleep(2)
end