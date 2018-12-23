#################################
#####  昼ドラ風プログラム #######
#################################

#共通クラス
class User

  attr_accessor :name,:age,:love_word,:hate_word
  def initialize(name:,age:,love_word:,hate_word:)
      self.name = name
      self.age = age
      self.love_word = love_word
      self.hate_word = hate_word
  end

end

=begin
<男側クラス>
今回の目的は継承の値の受け渡しの確認=>
他子クラスのインスタンス変数は持ってこれなかった。
配列や、変数に代入するといける。
=end


class Man < User

  attr_accessor :money

  def initialize(name:,age:,love_word:,hate_word:,money:)
      super(name: name,age: age,love_word: love_word,hate_word: hate_word)
      self.money = money
  end

  #TOKIOのメンバーが登場する分岐がある
  def tokio_members_hi(cool_members,woman_serif,word_h,word_l)
      text1 = "=>(心の声をいち早く察知）僕の年収は#{self.money}万円だよ。\n=>"
      text2 = <<~EOS
                =>やぁ、僕の友達を紹介するよ。
                #{cool_members[0]}、#{cool_members[1]}、#{cool_members[2]}だよ。
                みんなで一緒に飲もうよ\n=>#{word_l}
                EOS

      if  /年収/ =~ woman_serif
          self.money >= 500 ? text1 += word_l : text1 += word_h
      else
          text1 = text2
      end
      text1
  end


  def like(arry_w,decide_words)
      text = ""
      if  arry_w[2] <= 30 && decide_words.include?("深田恭子にそっくりな")
          puts "";sleep(4)
          text += "#{self.name}は、#{arry_w[0]}の#{arry_w[1]}なところが#{self.love_word}"
      else
          text += "#{self.hate_word}"
      end
      text
  end


  def info
      <<~text
          都会の真ん中で繰り広げられる諸行無常。
          愛と現実の間で揺れ動きながら、さまよう東京砂漠。
          #{self.name}#{self.age}歳...
          text
  end

end

#<女性側クラス>
class Woman < User

  attr_accessor :spec

  def initialize(name:,age:,love_word:,hate_word:,spec:)
      super(name: name,age: age,love_word: love_word,hate_word: hate_word)
      self.spec = spec
  end


  def question(serifs)
      text =<<~EOS
      \n
      ------------------------------------
      相席屋に初めてやってきた#{self.name}
              EOS
      serifs.each.with_index(1) do|item,i|

          text += "\n心の声#{i}:#{item}\n"
          end#textに代入しないとiが出力されない
      text
  end


  def self.select(serifs,answer)
      serifs[answer-1] ||= "１か２の数字を入力してください"
      "\n選んだセリフ「#{serifs[answer-1]}」"
  end

end
