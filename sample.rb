user_list = ["佐藤", "鈴木", "山田"]

new_user_list = user_list.map{|user| user == "佐藤" ? user = "斎藤" : user}

puts new_user_list
