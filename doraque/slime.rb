class Slime

  #フィールド
  #クラス全体で扱える
  attr_accessor :hp, :attack

  def initialize
    #ローカル変数
    self.hp = 15
    self.attack = 2
  end

  #指定されたオブジェクトを受け取っている
  def slime_attack(yuusya)
    yuusya.hp -= self.attack
  end

  def disp_hp
    self.hp
  end

end