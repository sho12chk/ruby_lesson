class Chara

  attr_accessor :name,:hp,:mp,:attack,:guard,:damage

  def initialize(name, hp, mp, attack, guard)
    #code
    self.name = name
    self.hp = hp
    self.mp = mp
    self.attack = attack
    self.guard = guard
  end

  def normalAttack(chara)
    #code
    chara.hp -= self.attack
    text = <<~TEXT

    #{self.name}のこうげき
    #{chara.name}のHPは#{chara.hp}だ

    TEXT
  end

end
