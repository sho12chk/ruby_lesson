# if文
# もし〜だったら〜をする

hp = 10
damage = 5

puts "勇者のHPは#{hp}だ"

if hp <= 0
  puts "勇者は死んだ"
else
  if hp >= 5
    puts "勇者はピンピンしている"
  elsif hp >= 3
    puts "勇者は弱っている"
  end
end

# hp = hp - damage
hp -= damage

puts "勇者は#{damage}のダメージを受けた"

if hp <= 0
  puts "勇者は死んだ"
else
  if hp >= 5
    puts "勇者はピンピンしている"
  elsif hp >= 3
    puts "勇者は弱っている"
  end
end
