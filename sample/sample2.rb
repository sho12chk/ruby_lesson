class Slime
  attr_accessor :hp, :attack

  def initialize
    self.hp = 15
    self.attack = 2
  end

  def slime_attack(yuusya)
    yuusya.hp -= (self.attack + rand(3))

    if yuusya.hp < 0
      0
    else
      yuusya.hp
    end

  end

end

class Yuusya
  attr_accessor :hp, :attack

  def initialize
    self.hp = 15
    self.attack = 2
  end

  def yuusya_attack(slime)
    slime.hp -= (self.attack + rand(5))

    if slime.hp < 0
      0
    else
      slime.hp
    end

  end

end


slime = Slime.new
yuusya = Yuusya.new

while true

  puts <<~HEREDOC

  スライムの攻撃
  勇者の残りHPは#{slime.slime_attack(yuusya)}だ

  HEREDOC
  sleep(2)

  exit if yuusya.hp <= 0

  puts <<~HEREDOC

  勇者の攻撃
  スライムの残りHPは#{yuusya.yuusya_attack(slime)}だ

  HEREDOC
  sleep(2)

  exit if slime.hp <= 0

end