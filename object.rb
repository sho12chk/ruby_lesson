=begin
オブジェクト指向
開発を効率よく進めるための重要な概念
=> 設計図を元に部品を作成し、その部品を使用して完成品を作ろう！！という考え方のこと

「車」の製作過程
設計図：車の設計図
部品：ハンドル、タイヤ、エンジン、ボディー
完成品：車


依頼 => 車を100台作ってください


設計図なしに車を作る
=> ものすごくめんどくさい
=> カスタマイズしにくい
=> 品質が悪い


設計図を元に車を作る
=> 効率が良い（再利用性）
=> カスタマイズしやすい（拡張性）
=> 品質が担保できる（保守性）

プログラミングの世界だと、、、、、

設計図 => クラス
部品 => オブジェクト
完成品 => Webアプリケーション

=end

#１つ１つゼロから作成するとものすごく労力がかかる
car1_price = 1000000
car1_color = "red"
car1_speed = 120
car1_accel = "進む"
car1_brake = "止まる"

car2_price = 1000000
car2_color = "red"
car2_speed = 120
car2_accel = "進む"
car2_brake = "止まる"

car3_price = 1000000
car3_color = "red"
car3_speed = 120
car3_accel = "進む"
car3_brake = "止まる"

#puts "進む".size
#string = String.new("進む")
#puts string.size

#クラス（設計図）の定義の仕方
#例) array, hash, String

#クラスの構成要素（車を例に考える）
#1. 情報（値段、色、最高速度） => フィールド
#2. 機能（アクセル、ブレーキ） => メソッド
#3. 初期値を設定するもの（タイヤ、エンジンはデフォ） => コンストラクタ

#Carクラスの定義
#クラス名を決める

class Car

  #1. フィールド（情報）の定義
  attr_accessor :price, :color, :speed

  #3. コンストラクタ（初期値を設定するもの）
  #クラスがオブジェクト化されたときに自動で実行される
  def initialize(price, color, speed)
    self.price = price
    self.color = color
    self.speed = speed
  end

  #2. メソッド（機能）
  def accel
    self.speed += 10
  end

  def brake
    self.speed -= 10
  end

  def pricedown(num)
    self.price *= (num * 0.1)
  end

end


#クラスをオブジェクト化するやり方
#car1(オブジェクト名) = Car(クラス名).new(オブジェクトを生み出す)
car1 = Car.new(3123424242, "Black", 200)
car2 = Car.new(2000000, "Red", 300)
car3 = Car.new(10000000, "Green", 100)
car4 = Car.new(3444887437, "Black", 200)
car5 = Car.new(474366437, "Black", 150)


puts car1.price
puts car1.accel
puts car2.accel
puts car3.accel
puts car4.accel
puts car5.accel


puts <<~TEXT

car1の値段を5割引します
#{car1.pricedown(5)}

TEXT

=begin

#フィールドにアクセスする
puts <<~HEREDOC

  car1の値段：#{car1.price}
  car2の値段：#{car2.price}
  car3の値段：#{car3.price}
  car4の値段：#{car4.price}
  car5の値段：#{car5.price}

HEREDOC

#メソッドを呼び出す
puts <<~HEREDOC

  car1のアクセルを踏む：スピードが#{car1.accel}km/hになった
  car2のアクセルを踏む：スピードが#{car2.accel}km/hになった
  car3のアクセルを踏む：スピードが#{car3.accel}km/hになった
  car4のアクセルを踏む：スピードが#{car4.accel}km/hになった
  car5のアクセルを踏む：スピードが#{car5.accel}km/hになった

HEREDOC

=end
