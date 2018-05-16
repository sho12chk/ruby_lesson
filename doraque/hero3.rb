require "./chara3.rb"

#継承
#=> 継承元のクラスのフィールドやメソッドを使用することができる

class Hero < Chara

    #コンストラクタ
    def initialize(name,hp,mp,attack_power,guard,quickness,luck)
        self.name = name
        self.hp = hp
        self.mp = mp
        self.attack_power = attack_power
        self.guard = guard
        self.quickness =     quickness
        self.luck = luck
        self.text = ""
    end

    def attack(enemy)
      self.text = ""
      selected_attack = rand(5)
      if selected_attack == 1
        tokugilevel1(enemy)
      elsif selected_attack == 2
        tokugilevel2(enemy)
      elsif selected_attack == 3
        tokugilevel10(enemy)
      elsif selected_attack == 4
        ichigekihissatsu(enemy)
      else
        self.text += "攻撃は外れた、、、、、。\n"
      end
    end

    #メソッド
    def tokugilevel1(enemy)
        enemy.hp -= attack_power
        self.text += "パンチ\n"
        if enemy.hp < 0
            self.text += "#{enemy.name}のHPは0だ\n"
        else
            self.text += "#{enemy.name}のHPは#{(enemy.hp).round}だ\n"
        end
    end

    def tokugilevel2(enemy)
      enemy.hp -= (attack_power * 1.1)
      self.text += "斬り\n"
      if enemy.hp < 0
          self.text += "#{enemy.name}のHPは0だ\n"
      else
          self.text += "#{enemy.name}のHPは#{(enemy.hp).round}だ\n"
      end
    end

    def tokugilevel10(enemy)
      self.text += "魔神斬り\n"
      enemy.hp -= (attack_power * 1.2)
      if enemy.hp < 0
          self.text += "#{enemy.name}のHPは0だ\n"
      else
          self.text += "#{enemy.name}のHPは#{(enemy.hp).round}だ\n"
      end
    end

    def ichigekihissatsu(enemy) #必ず瀕死
      enemy.hp *= 0.1
      self.text += "地割れ\n"
      if enemy.hp < 0
          self.text += "#{enemy.name}のHPは0だ\n"
      else
          self.text += "#{enemy.name}のHPは#{(enemy.hp).round}だ\n"
      end
    end

end
