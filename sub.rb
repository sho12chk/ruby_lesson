team_sato = ["佐藤", "鈴木", "山田"]

team_saito = team_sato.map {|u| u.sub(/佐藤/,"斎藤")}

puts team_saito
