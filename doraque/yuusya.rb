class Yuusya

  attr_accessor :hp, :attack, :special_attack

  def initialize
    self.hp = 10
    self.attack = 3
    self.special_attack = 6
  end

  def slime_attack(slime_attack)
    self.hp -= slime_attack
  end

  def disp_hp
    self.hp
  end

end