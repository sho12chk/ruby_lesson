###################################################################
#####　ランダム名言bot(ランダム曜日でそれらしく装いました)  #######
###################################################################

########################################################

  #名言クラス
  class G_saying
    #名言リスト出現メソッド
    def self.gold_list(sayings,count,ja_7days_of_the_week,alt_say_human)
      s= sayings[count]
      text = ""
      if %r(by[^.]+) =~ s
          text += "#{ja_7days_of_the_week[count]}の名言：#{s.sub!(/by[^.]+/,alt_say_human)}"
      end
      text
    end
  end

  #名言たち
  monday = "憂鬱でなければ仕事でないby見城徹"
  tuesday = "無駄な１日とは、笑いがなかった日のことであるbyチャーリー・チャップリン"
  wendnesday = "自分の機嫌は自分でとるbyみやぞん"
  thirsday = "1番裏切るやつは、1番働くやつbyビートたけし"
  friday = "苦情処理係に関する苦情は、どこに持って行けばいいんだろう？byレオポルド・フェクトナー"
  saturday = "人生はバイトbyピコ太郎"
  sunday = "サボテンでさえ、人を好きになるんやぞby吉田敬"
  #名言配列、曜日配列
  sayings = [monday,tuesday,wendnesday,thirsday,friday,saturday,sunday]
  ja_7days_of_the_week = ["月曜日","火曜日","水曜日","木曜日","金曜日","土曜日","日曜日"]
  #強制代入=>ペー・パー子
  alt_say_human = "by林家ペー・パー子"
  #メインコード
  puts %("林家ペー・パー子がでしゃばる名言bot")

########################################################
###  テストコード　#####################################
(0..6).each do |count|
  puts G_saying.gold_list(sayings,count,ja_7days_of_the_week,alt_say_human)
end
