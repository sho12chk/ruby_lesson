class Opera

  def initialize(num:)

    #スポンジケーキ
    @almond_powder = 45 * num
    @flour = 60 * num
    @egg = 4 * num
    @sugar = 120 * num
    @butter = 20 * num

    #コーヒーシロップ
    @sugar2 = 30
    @water = 75
    @instant_cofee = 10
    @brandy = 23

    #ガナッシュ
    @chocolate = 150 * num
    @fresh_cream = 75 * num

    #アーモンド
    @almond_powder2 = 20 * num
    @sugar3 = 10 * num
    @butter2 = 75 * num

    #参考URL
    @url = "https://cookpad.com/recipe/3304186"

  end

  def disp_ingredients

    puts <<~HEREDOC

      「オペラ」

      【スポンジケーキ】
      アーモンドパウダー：#{@almond_powder}
      溶かしバター　　　：#{@butter}
      薄力粉　　　　　　：#{@flour}
      砂糖　　　　　　　：#{@sugar}
      卵　　　　　　　　：#{@egg}



      【コーヒーシロップ】
      インスタントコーヒー：#{@instant_cofee}
      ブランデー　　　　　：#{@brandy}
      砂糖　　　　　　　　：#{@sugar2}
      水　　　　　　　　　：#{@water}


      【ガナッシュ】
      チョコレート　　：#{@chocolate}
      生クリーム　　　：#{@fresh_cream}

      【アーモンドバター】
      アーモンドパウダー：#{@almond_powder2}
      バター　　　　　　：#{@butter2}
      粉糖　　　　　　　：#{@sugar3}


      参考サイト　　　　：#{@url}

    HEREDOC
  end

end