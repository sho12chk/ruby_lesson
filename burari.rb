station1 = ["北本", "桶川", "北上尾", "上尾"]
station2 = ["宮原", "大宮", "さいたま新都心", "浦和", "赤羽"]
station3 = ["尾久", "上野", "稲荷町", "田原町"]

stations = [station1, station2, station3]


text = <<~HEREDOC

さぁ、「プログラミングdeぶらり途中下車の旅」に出かけましょう！
表示された駅で絶対に降りてください

絶対に

あなたが今日降りるのは、、、、、、

HEREDOC


stations.each_with_index do |station_togo, i|
  text += "No.#{i+1}　#{station_togo.sample}駅　滞在時間：#{rand(30...60)}分\n"
end


text += <<~HEREDOC
No.4　浅草駅　滞在時間：無制限

以上です！
せいぜい楽しんできてください
それでは

HEREDOC



puts text
