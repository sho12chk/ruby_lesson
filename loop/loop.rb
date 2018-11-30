user_list = ["Yanagi", "Saitou", "Aoyagi", "Imai", "Obata", "Takahashi"]
user_list.shuffle!

team_a = []
team_b = []

user_list.each.with_index do |user, i|
  if i.odd?
    team_a << user
  else
    team_b << user
  end
end

text = "チームA\n"
# each.with_indexに変更
team_a.each.with_index(1) do |member, i|
  # 各メンバーに番号を振る
  text += "No.#{i}：#{member}さん\n"
end
text += "\nチームB\n"
team_b.each.with_index(1) do |member, i|
  # 各メンバーに番号を振る
  text += "No.#{i}：#{member}さん\n"
end

puts text
