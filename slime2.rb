#メソッド
#一連の処理をあらかじめ定義し、簡単に使用できるようにしたもの

hero_hp = 35
slime_hp = rand(30...40)

#メソッド
#スライムの攻撃メソッド
def slime_attack
    rand(5...9)
end

def slime_spattack
    rand(10...15)
end

#HEROの攻撃メソッド
def hero_attack
    rand(8...12)
end

def hero_spattack
    rand(13...18)
end


while true
  puts "HEROの攻撃"
  if rand(4) == 0
    slime_hp -= hero_spattack
    puts "会心の一撃"
  else
    slime_hp -= hero_attack
    puts "通常攻撃"
  end

  if slime_hp > 0
    puts "SLIMEのHPは#{slime_hp}だ"
  else
    puts "SLIMEのHPは0だ"
    puts "SLIMEは死んだ"
    exit
  end

  sleep(2)

  puts "SLIMEの攻撃"
  if rand(4) == 0
    hero_hp -= slime_spattack
    puts "痛恨の一撃"
  else
    hero_hp -= slime_attack
    puts "通常攻撃"
  end

  if hero_hp > 0
    puts "HEROのHPは#{hero_hp}だ"
  else
    puts "HEROのHPは0だ"
    puts "HEROは死んだ"
    exit
  end

  sleep(2)

end


