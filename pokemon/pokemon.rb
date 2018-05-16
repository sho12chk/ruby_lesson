class Pokemon

  attr_accessor :hp, :attack, :speed

  def initialize(myhp, myattack, myspeed)
    self.hp = myhp
    self.attack = myattack
    self.speed = myspeed
  end

  def attack
    "攻撃する"
  end

  def pokeDash
    "逃げる"
  end

end


picatyu = Pokemon.new(100, 30, 50)
zenigame = Pokemon.new(80, 50, 10)

puts <<~HEREDOC

  ピカチュウのパラメータ

  HP：#{picatyu.hp}
  攻撃力：#{picatyu.attack}
  素早さ：#{picatyu.speed}

HEREDOC


puts <<~HEREDOC

  ゼニガメのパラメータ

  HP：#{zenigame.hp}
  攻撃力：#{zenigame.attack}
  素早さ：#{zenigame.speed}

HEREDOC
