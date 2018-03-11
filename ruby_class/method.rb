class Mac
  attr_accessor :name
  attr_accessor :price

  def initialize(name:, price:)
    self.name = name
    self.price = price
  end

  def info
    return "#{self.name} #{self.price}円"
  end

  def get_total_price(count)
    total_price = self.price * count
    if count >= 3
      total_price = total_price * 0.9
      puts "3個以上のお買い上げなので10％OFFとさせていただきます"
    end
    puts <<~HEREDOC
      お支払いは#{total_price.round}円です
      お買い上げありがとうございました
    HEREDOC
  end
end
