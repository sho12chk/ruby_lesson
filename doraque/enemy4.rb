require "./chara4.rb"

class Slime < Chara

  def slimeAttack(chara)
    #code
    select = rand(2)

    if select == 1
      normalAttack(chara)
  end

  def specialAttack(chara)
    chara.hp -= (self.attack*2)
    self.mp = -3
    #code
    text = <<~TEXT

    体当たり!!!
    #{chara.name}のHPは#{chara.hp}だ

    TEXT

    return text

  end

end
