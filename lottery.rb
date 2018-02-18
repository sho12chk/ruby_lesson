class Lottery

  attr_accessor :selected_num

  def initialize
    self.selected_num = rand(1..100)
  end

  def lottery(num)

    if selected_num == num
      "おめでとうございます！1億円が当たりました！当選ナンバーは#{selected_num}です"
    else
      "ハズレです"
    end

  end

end

people = Lottery.new

(1..100).each do |num|
  puts people.lottery(num)
end