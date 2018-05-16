require "./hero3.rb"
require "./enemy3.rb"

butouka = Hero.new("武闘家",1000,50,60,40,20,3)
dragon = Enemy.new("ドラゴン",1000,90,70,20,50,5)

puts <<~TEXT

    職業：#{butouka.name}
    HP：#{butouka.hp}
    MP：#{butouka.mp}
    力：#{butouka.attack_power}
    守：#{butouka.guard}
    素早さ：#{butouka.quickness}
    運：#{butouka.luck}
    ////////////////////////////////////////////////

    職業：#{dragon.name}
    HP：#{dragon.hp}
    MP：#{dragon.mp}
    力：#{dragon.attack_power}
    守：#{dragon.guard}
    素早さ：#{dragon.quickness}
    運：#{dragon.luck}
    ////////////////////////////////////////////////

TEXT


while true

    butouka.attack(dragon)

    puts <<~TEXT
    武闘家の攻撃　#{butouka.text}
    TEXT

    exit if dragon.hp <= 0

    dragon.attack(butouka)

    puts <<~TEXT
    ドラゴンの攻撃　#{dragon.text}
    TEXT

    exit if butouka.hp <= 0

end
