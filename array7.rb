user = ["saitou", 23, "afad@ne.co.jp"]

user_name, user_age, user_mail = user

puts <<~TEXT
お名前：#{user_name}
年齢：#{user_age}
メール：#{user_mail}
TEXT