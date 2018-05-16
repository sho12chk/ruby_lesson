#オブジェクト指向
#クラスを使いまわす（再利用する）という考え方がある
#共通する処理は１つのクラスにまとめてそれを使いまわした方が効率がいい
#=> 継承
#=> フィールドやメソッドを全て受け継ぐ

#親クラス（スーパークラス）
class Chara
  attr_accessor :hp, :attack

  def initialize(hp, attack, mp)
    self.hp = hp
    self.attack = attack
  end

  def my_attack(chara)
    chara.hp -= self.attack
  end
end

#子クラス（サブクラス）
class Yuusya < Chara
  def special_attack(chara)
    puts "ギガスラッシュ"
    chara.hp -= self.attack * 1.5
  end
end

class Slime < Chara
  def special_attack(chara)
    puts "体当たり"
    chara.hp -= self.attack * 1.5
  end
end

#それぞれのクラスのオブジェクトを生成
yuusya = Yuusya.new(15, 5, 100)
slime = Slime.new(10, 3, 100)

puts "スライムのHP：#{slime.hp}"
puts "勇者のHP：#{yuusya.hp}"

#勇者クラスの攻撃の処理を呼び出し
yuusya.my_attack(slime)

#勇者クラスの必殺技
yuusya.special_attack(slime)

#スライムの攻撃の処理を呼び出し
slime.my_attack(yuusya)

#スライムクラスの必殺技
slime.special_attack(yuusya)

puts slime.hp
puts yuusya.hp
