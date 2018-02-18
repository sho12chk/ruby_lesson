def loggin(answer)
  answer or return "「はい」か「いいえ」を洗濯してください"

  if answer == "1"
    puts <<~TEXT
    正常なログインと判断されました
    処理を終了します
    TEXT
  else
    puts <<~TEXT
    不正なログインです
    すぐにパスワードを変更し、システムサポートへご連絡ください
    TEXT
  end
end


puts <<~TEXT
こちらの端末からログインしましたか？
=> iPhone（1/26, 渋谷）

1. はい
2. いいえ
TEXT

answer = gets.chomp

puts loggin(answer)
