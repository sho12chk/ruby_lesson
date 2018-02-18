class Slime

  attr_accessor :hp

  #クラスが実体化されるときに自動で実行されるメソッド
  def initialize
    self.hp = rand(10..15)
  end

  def disp_hp
    puts "スライムのHPは#{@hp}だ"
  end

  def attack
    rand(5..10)
  end

end


class Yuusya

  attr_accessor :hp

  #クラスが実体化されるときに自動で実行されるメソッド
  def initialize
    self.hp = rand(10..15)
  end

  def disp_hp
    "勇者のHPは#{@hp}だ"
  end

  def attack
    rand(5..10)
  end

end


slime = Slime.new
yuusya = Yuusya.new
#オブジェクト：クラスを実体化したもの

puts <<~HEREDOC

#{slime.disp_hp}
#{yuusya.disp_hp}

HEREDOC