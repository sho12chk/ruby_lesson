# ハッシュとは？
# 「キー」と「バリュー」がセットになったデータの集まり
# 複数のデータを格納することができるので配列とちょっと似ている
#
# Ruby on Rails でよく使うハッシュ
# HTML側で送信された情報を取得するために使用される
# => params = {user_name: "saitou", age: "30"}
#
# ハッシュ
# user1 = {name: "Kamizato", email: "hoge@huga", tell: "09011111111"}
#
# puts user1[:name]
# puts user1[:email]
# puts user1[:tell]

#値を取り出す方法
#puts "お名前：#{user1[:name]}"

# Railsでは、ユーザが送信したデータを受け取るとき
# ハッシュの形式でデータが送信される
params = { name: "Kamizato", email: "hoge@huga", tell: "09011111111" }
params2 = { name: "Suzuki", email: "aaa@huga", tell: "09011112222" }
params3 = { name: "Saitou", email: "bbb@huga", tell: "09011113333" }
params4 = { name: "Yamada", email: "ccc@huga", tell: "09011114444" }

#user_name = params[:name]
#puts "#{user_name}さんがログインしています"

#ハッシュは配列や繰り返し文と合わせることでより大量のデータを処理できるようになる
#ハッシュを配列に格納する
parameters = [params, params2, params3, params4]

parameters.each do |params|
  puts <<-TEXT

  お名前：#{params[:name]}
  Eメール：#{params[:email]}
  電話番号：#{params[:tell]}

  TEXT
end






#
# puts "---------------------------"
#
# parameters.each.with_index(10) do |params, i|
#   puts <<-TEXT
#
#   会員No.#{i}
#   お名前：#{params[:name]}
#   Eメール：#{params[:email]}
#   電話番号：#{params[:tell]}
#
#   TEXT
# end
#
# puts "---------------------------"

# users = [user1, user2, user3, user4, user5]
#
# users.each.with_index(1) do |user, i|
#   puts <<~TEXT
#
#       会員No.#{i}
#       お名前：#{user1[:name]}
#       Eメール：#{user1[:email]}
#       電話番号：#{user1[:tell]}
#
#   TEXT
# end
#
#
#
# #=> ユーザが情報を入力
# #=> 例）会員登録フォーム（お名前、Eメール、電話番号）
# #=> 送信ボタンを押すと、そのデータがハッシュの形式で送られてくる
#
# user1 = {name: "Kamizato", email: "hoge@huga", tell: "09011111111" }
# user2 = {name: "Emi", email: "hoge@huga", tell: "09011111111" }
# user3 = {name: "Masato", email: "hoge@huga", tell: "09011111111" }
# user4 = {name: "Yoko", email: "hoge@huga", tell: "09011111111" }
# user5 = {name: "Akihito", email: "hoge@huga", tell: "09011111111" }
#
# users = [user1, user2, user3, user4, user5]
#
#
# puts "------------------------"
#
# users.each do |user|
#   #ヒアドキュメント
#   puts <<~TEXT
#
#   お名前：#{user[:name]}
#   Eメール：#{user[:email]}
#   電話番号：#{user[:tell]}
#
#   -----------------------------
#   TEXT
# end
#
#
#
#
#
# #値を取り出すときはキーを指定してあげる
# puts "---------------------------"
#
# puts "お名前：#{user1[:name]}"
# puts "Eメール：#{user1[:email]}"
# puts "電話番号：#{user1[:tell]}"
#
# puts "---------------------------"
#
# #ヒアドキュメント
# #複数行の文字列を簡潔に出力することができる
#
# @text = <<~HEREDOC
#
# お名前：#{user1[:name]}
# Eメール：#{user1[:email]}
# 電話番号：#{user1[:tell]}
#
# HEREDOC
#
# puts @text
#
# puts "---------------------------"
#
# users = [user1, user2, user3, user4, user5]
#
# users.each.with_index do |user, i|
#   puts <<~TEXT
#
#       会員No.#{i+1}
#       お名前：#{user1[:name]}
#       Eメール：#{user1[:email]}
#       電話番号：#{user1[:tell]}
#
#   TEXT
# end
#
# puts "---------------------------"
#
# users = [user1, user2, user3, user4, user5]
#
# users.each.with_index(1) do |user, i|
#   puts <<~TEXT
#
#       会員No.#{i}
#       お名前：#{user1[:name]}
#       Eメール：#{user1[:email]}
#       電話番号：#{user1[:tell]}
#
#   TEXT
# end
