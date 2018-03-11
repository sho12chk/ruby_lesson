hp = rand(10..15)

puts <<~HEREDOC

スライムがあらわれた

スライムのHPは#{hp}だ

HEREDOC

kaisin = rand(10..15)
tuujyou = rand(5..10)

attack = ["会心の一撃 #{kaisin}", "通常攻撃 #{tuujyou}"]

i = rand(4)

if i == 0
  puts attack[0]
else
  puts attack[1]
end