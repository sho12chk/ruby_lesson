class Yuusya

  attr_accessor :hp, :attack, :special_attack

  def initialize
    self.hp = 10
    self.attack = 3
    self.special_attack = 6
  end

  def yuusya_attack(slime)
    slime.hp -= self.attack
  end

  def disp_hp
    self.hp
  end

end