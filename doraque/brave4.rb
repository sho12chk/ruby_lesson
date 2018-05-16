require "./chara4.rb"

class Brave < Chara

  def specialAttack(chara)
    chara.hp -= (self.attack*2)
    self.mp = -3
    #code
    text = <<~TEXT

    魔神斬り!!!
    #{chara.name}のHPは#{chara.hp}だ

    TEXT

    return text

  end

end
