user_name = "Yoshito"
yoshito = ["これからご飯", "遊園地へゴー！", "ペットの猫が可愛い"]

yoshito.each do |data|

  puts <<~HEREDOC

  投稿者：#{user_name}

  #{data}

  HEREDOC

end