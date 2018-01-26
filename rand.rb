kougeki = ["会心の一撃", "通常攻撃", "通常攻撃", "通常攻撃"]

action = kougeki.sample



if action = "会心の一撃"
  damage = rand(10..15)
else
  damage = rand(5..9)
end

puts action
puts "#{damage}のダメージを与えた"