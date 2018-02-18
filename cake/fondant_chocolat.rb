class FondantChocolat

  def initialize(num:)
    @choco = 50 * num
    @salad_oil = 50 * num
    @egg = 1 * num
    @sugar = 2 * num
    @flour = 5 * num

    #参考URL
    @url = "https://cookpad.com/recipe/4925697"

  end

  def disp_ingredients
    puts <<~HEREDOC

      「フォンダンショコラ」

      チョコレート：#{@choco}g
      サラダ油　　：大さじ#{@salad_oil}杯
      小麦粉　　　：大さじ#{@flour}杯
      砂糖　　　　：大さじ#{@sugar}杯
      卵　　　　　：#{@egg}個



    HEREDOC
  end
end

