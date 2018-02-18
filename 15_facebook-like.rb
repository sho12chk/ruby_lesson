#変数:値を入れておく箱のようなもの
puts "Facebook"

puts "ログイン名を決めてください"

name = "KAMIZATO"


text = <<~TEXT

ログイン名：#{name}
投稿者：#{name}
コメント：#{name}
TEXT


text += <<~TEXT
コメント2：#{name}
コメント3：#{name}
TEXT


puts text

