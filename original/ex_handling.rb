class Apple

  def initialize(items)
    @items = items
  end

  def disp_items
    text = "購入したい商品の番号を選択してください\n"
    @items.each.with_index(1) do |item, i|
      text += "No.#{i}　#{item}\n"
    end
    text
  end

  def select(selected_num)
    selected_num -= 1
    # @items[selected_num] ||= "データがありません"
    @items[selected_num] ? "#{@items[selected_num]}を選択しました" : "データがありません"
  end

end

items = ["Mac", "iPhone", "iPad"]

apple = Apple.new(items)

puts apple.disp_items
print "商品を選択："
selected_num = gets.chomp.to_i
puts apple.select(selected_num)
