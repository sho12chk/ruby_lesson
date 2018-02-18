class Calculator

  attr_accessor :array
  attr_accessor :sum

  def initialize
    self.array = []
    self.sum = 0
  end

  def make_array(num)
    #配列を作る
    num.times do |n|
      self.array[n] = n
    end
  end

  def inject_sum
    self.sum = self.array.inject(:+)
  end


end