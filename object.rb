#クラスの定義の仕方

#クラスの構成要素（車を例に考える）
#1. 情報（値段、色、乗車人数） => フィールド
#2. 機能（アクセル、ブレーキ）=> メソッド
#3. 初期値を設定するもの（タイヤ、エンジンはデフォ） => コンストラクタ

class Car

  #フィールドの定義
  attr_accessor :price, :color, :number, :speed

  #コンストラクタ
  #クラスがオブジェクト化されたときに自動で実行される
  def initialize
    self.price = 1000000
    self.color = "red"
    self.number = 6
  end

  #メソッド
  def accel
    speed = 100
  end

  def brake
    speed = 0
  end

end


#クラスをオブジェクト化するやり方
car1 = Car.new
car2 = Car.new
car3 = Car.new
car4 = Car.new
car5 = Car.new
car6 = Car.new
car7 = Car.new

#フィールドを呼び出す
puts car1.price

#クラスメソッドを呼び出す
puts car1.accel
puts car1.brake


=begin
オブジェクト指向
開発を効率よく進めるための重要な概念

設計図を元に部品を作成し、その部品を使用して完成品を作成するという考え方


設計図：車の設計図
部品：ハンドル、タイヤ、エンジン、ボディー
完成品：車


車を100台作ってください

設計図なしに車を作る
=> ものすごいめんどくさい
=> カスタマイズしにくい
=> 品質が低い


設計図を元に車を作る
=> 効率が上がる
=> 拡張性がある
=> 品質が担保できる


設計図 => クラス
部品 => オブジェクト
完成品 => Webアプリケーション
=end