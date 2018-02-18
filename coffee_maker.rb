class CofeeMaker
  attr_accessor :price
  attr_accessor :size
  attr_accessor :type
  #オブジェクト
  #引数：argument
  def initialize(selected_price, size, type)
    self.price = selected_price
    self.size = size
    self.type = type

    #mill と drip 以外が入力された場合
    self.type = "ご希望のタイプのコーヒーメーカーはございません" if self.type != "mill" && self.type != "drip"
  end

  #mill drip それぞれでオススメの商品のURL
  def recommend
    if self.type == "mill"
      "https://www.amazon.co.jp/gp/product/B00MF2TJRQ/ref=as_li_ss_tl?ie=UTF8&linkCode=sl1&tag=monomania04-22&linkId=35eeecb3a6db6d9a54bc96f91ed717af"
    elsif self.type == "drip"
      "https://www.dinos.co.jp/p/1359900108/?utm_source=google&utm_medium=PLA&utm_term=501601&utm_campaign=AP1004"
    else
      "オススメの商品を探すことができませんでした"
    end
  end
end

puts <<~TEXT

コーヒーメーカー注文プログラム
あなたの理想のコーヒーメーカーを教えてください

TEXT

print "No.1 値段："
price = gets.chomp.to_i
print "No.2 大きさ："
size = gets.chomp.to_i
print "No.3 タイプ(mill or drip)："
type = gets.chomp

#クラスを使えるようにする
selected_cm = CofeeMaker.new(price, size, type)

#複数行の文章を表示させたい場合に楽な書き方
text = <<~TEXT

お客様のご希望の商品はこちらですね

値段　：#{selected_cm.price}円
大きさ：#{selected_cm.size}cm
タイプ：#{selected_cm.type}

オススメの商品はこちらです
URL：#{selected_cm.recommend}

TEXT

puts text



