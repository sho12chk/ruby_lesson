class Slime

  #スライムのパラメータ => 情報（フィールド or プロパティ）
  #フィールドの宣言は省略して書くことができる
  attr_accessor :hp,:attack,:guard,:damage

  #コンストラクタ（初期値を設定する働きを持つもの）
  #=> オブジェクト化した時に自動で実行される
  def initialize
    self.hp = 10
    self.attack = 5
    self.guard = 5
  end

  #アクション（攻撃・逃げる） => メソッド
  #勇者に攻撃を与える
  #勇者オブジェクトを受け取る
  def slimeAttack(brave)
    damage = self.attack - brave.guard

    if damage >= 0
      brave.hp -= damage
    else
      brave.hp -= 1
    end

    if brave.hp <= 0
      puts "勇者は死んだ"
      exit
    end
  end

end




class Brave

  #スライムのパラメータ => 情報（フィールド or プロパティ）
  attr_accessor :hp, :attack, :guard ,:damage

  #コンストラクタ（初期値を設定する働きを持つもの）
  #=> オブジェクト化した時に自動で実行される
  def initialize
    self.hp = 15
    self.attack = 7
    self.guard = 7
  end

  #アクション（攻撃・逃げる） => メソッド
  def braveAttack(slime)
    self.damage = self.attack - slime.guard

    if damage >= 0
      slime.hp -= self.damage
    else
      slime.hp -= 1
    end

    if slime.hp <= 0
      puts "スライムは死んだ"
      exit
    end
  end

end




#オブジェクト化して変数(slime1)に代入
slime1 = Slime.new
slime2 = Slime.new
slime3 = Slime.new

brave = Brave.new

puts "スライムのHPは#{slime1.hp}だ"
puts "勇者のHPは#{brave.hp}だ"
puts "----------------------------------------"

while true
  #slime1のhpを表示
  puts "スライムの攻撃"
  slime1.slimeAttack(brave)
  puts "#{slime1.damage}のダメージを受けた"
  puts "勇者のHPは#{brave.hp}だ"
  puts "----------------------------------------"
  puts "勇者の攻撃"
  brave.braveAttack(slime1)
  puts "スライムのHPは#{slime1.hp}だ"
  puts "----------------------------------------"
end
