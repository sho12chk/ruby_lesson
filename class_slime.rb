class Chara
  attr_accessor :hp
  attr_accessor :name

  def initialize(hp:, name:)
    self.hp = hp
    self.name = name
  end

  def attack
    return rand(5..9)
  end

  def special_attack
    return rand(10..15)
  end
end

yuusya_name = gets.chomp



slime = Chara.new(name: "スラぼう", hp: rand(5..10))
yuusya = Chara.new(name: yuusya_name, hp: 10)


while true

  if rand(4) == 0
    enemy_damage = yuusya.special_attack
    text = "会心の一撃！！！"
  else
    enemy_damage = yuusya.attack
    text = "通常攻撃"
  end


  my_damage = slime.attack

  slime.hp -= enemy_damage

  puts <<~HEREDOC

  #{yuusya.name}の攻撃

  #{text}

  #{yuusya.name}は#{enemy_damage}のダメージを与えた

  #{slime.name}のHPは#{slime.hp}だ

  HEREDOC


  if slime.hp <= 0
    puts "スライムは死んだ"
    exit
  end

  yuusya.hp -= my_damage

  puts <<~HEREDOC

  #{slime.name}の攻撃

  #{slime.name}から#{enemy_damage}のダメージを受けた

  #{yuusya.name}のHPは#{slime.hp}だ

  HEREDOC

  if yuusya.hp <= 0
    puts "#{yuusya.name}は死んだ"
    exit
  end

end