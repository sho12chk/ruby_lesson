
class Car
  attr_accessor :color, :price, :weight

  def initialize(color, price, weight)
    @color = color
    @price = price
    @weight = weight
  end

end


car1 = Car.new("red", 2000, 800)
car2 = Car.new("blue", 1000, 500)

puts car1.color
puts car2.color
