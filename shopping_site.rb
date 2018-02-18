class ShopSite

  attr_accessor :text, :price, :sum_price

  def initialize
    self.text = ""
    self.price = [100,200,300,400,500]
    self.sum_price = 0
  end

  def disp_price
    price.each do |data|
     puts "商品：#{data}円\n"
    end
  end

  def calc_sum_price
    price.each do |number|
      self.sum_price += number
    end
  end

end


shop = ShopSite.new


shop.disp_price