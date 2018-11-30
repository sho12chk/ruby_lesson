require 'colorize'

# if文
# 条件分岐
# もし〜だったら〜をする


hp = 10
damage = 20

puts "勇者のHPは#{hp}だ"

# hpから5を引く
puts "モンスターの攻撃"
hp = hp - damage


if hp <= 0
  # hpが0以下だったら"勇者は死んだ"と表示させる
  puts "勇者は死んだ".red
else
  # 「hpが0以下」という条件以外だったら"勇者の残りHPは〜だ"と表示させる
  puts "勇者の残りHPは#{hp}だ"
end

# hp = hp - damage
# hp -= damage
#
# puts "勇者は#{damage}のダメージを受けた"
#
# if hp <= 0
#   puts "勇者は死んだ"
# else
#   if hp >= 5
#     puts "勇者はピンピンしている"
#   elsif hp >= 3
#     puts "勇者は弱っている"
#   end
# end
