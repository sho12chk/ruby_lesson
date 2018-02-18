class GateauChocolat

  def initialize(num:)
    @choco = 100 * num
    @fresh_cream = 50 * num
    @egg = 2 * num
    @flour = 10 * num

    #参考URL
    @url = "https://cookpad.com/recipe/4922337"

  end

  def disp_ingredients
    puts <<~HEREDOC

      「ガトーショコラ」

      チョコレート：#{@choco}
      生クリーム　：#{@fresh_cream}
      小麦粉　　　：#{@flour}
      卵　　　　　：#{@egg}

    HEREDOC
  end

end