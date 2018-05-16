class Chara

  attr_accessor :hp, :attack

  def initialize(hp, attack, mp)
    self.hp = hp
    self.attack = attack
  end

  def my_attack(enemy)
    select_attack = rand(4)
    if select_attack == 0
      special_attack(enemy)
    else
      normal_attack(enemy)
    end
  end

  def normal_attack(enemy)
    enemy.hp -= self.attack
    puts "通常攻撃"
  end

end


class Yuusya < Chara

  def special_attack(enemy)
    enemy.hp /= self.attack
    puts "会心の一撃"
  end

end

class Slime < Chara

  def special_attack(enemy)
    enemy.hp /= self.attack
    puts "体当たり"
  end

end

#それぞれのクラスのオブジェクトを生成
yuusya = Yuusya.new(30, 5, 100)
slime = Slime.new(20, 3, 100)

while true

  puts <<~TEXT
  攻撃をしますか？
  コマンドを入力してください
  yes → y
  no → n
  TEXT

  num = gets.chomp

  puts "あなたの選択したコマンドは#{num}です"

  if num == "y"
    puts "攻撃をします"
    yuusya.my_attack(slime)
  elsif num == "n"
    puts "戦わずに逃げる"
  else
    puts "そんなコマンドはありません"
  end

  if slime.hp <= 0
    puts "スライムは死んだ"
    exit
  end

  puts "スライムの攻撃"

  slime.my_attack(yuusya)

  if yuusya.hp <= 0
    puts "勇者は死んだ"
    exit
  end

end
