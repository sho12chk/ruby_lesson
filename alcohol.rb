class Alcohol
  attr_accessor :name, :price

  def buy(money)
    return "お金が足りません" unless self.price < money
    "お買い上げありがとうございました。"
  end
end

alc = Alcohol.new

alc.name = "オリオンビール"
alc.price = 211

puts alc.buy(300)
