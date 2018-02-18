class Slime

  attr_accessor :hp, :attack

  def initialize
    self.hp = 15
    self.attack = 2
  end

  def yuusya_attack(yuusya_attack)
    self.hp -= yuusya_attack
  end

  def disp_hp
    self.hp
  end

end