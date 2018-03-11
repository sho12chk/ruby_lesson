class Chara

  #attr_accessor :hp, :attack

  def initialize
    #インスタンス変数=>クラスの中で使用できる変数
    #クラスの外部からもアクセスできる
    @hp = 10
    @attack = 10
  end

  #ゲッター => 値を取得するためのメソッド
  def hp
    @hp
  end

  #ゲッター => 値を取得するためのメソッド
  def attack
    @attack
  end

  #セッター => 値を設定するためのもの
  def hp=(attack)
    @hp -= attack
  end

end


yuusya1 = Chara.new
slime1 = Chara.new

puts yuusya1.hp
puts yuusya1.attack

puts yuusya1.hp - slime1.attack




