
# 車の設計図
# 定義　クラス名の先頭を大文字
# 情報や機能を持つことができる
class Car
  # 情報：値段、最高速度、乗車可能人数
  attr_accessor :price, :speed, :num_people

  # 機能：走る（アクセル）、止まる（ブレーキ）

end

# 車オブジェクト（設計図を実体化したもの）
# オブジェクト化　new演算子を使う
car1 = Car.new
car2 = Car.new
car3 = Car.new
car4 = Car.new
car5 = Car.new

# 値段に情報を格納
car1.price = 1000000
car1.speed = 120
car1.num_people = 4

car2.price = 1000000
car2.speed = 120
car2.num_people = 4

# オブジェクトの持つ情報を表示
puts "値段：#{car1.price}"
puts "速度：#{car1.speed}"
puts "乗車人数：#{car1.num_people}"
