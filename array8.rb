class User
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

end

# 配列の宣言
user_list = []

# オブジェクトを配列に格納
user_list << User.new("tanaka", 33)
user_list << User.new("saitou", 33)
user_list << User.new("suzuki", 33)
user_list << User.new("satou", 33)

# 格納したオブジェクトの情報を出力
text = ""

user_list.each.with_index(1) do |user, i|
  text += <<~TEXT
  会員No.#{i}
  お名前 #{user.name}
  年齢 #{user.age}
  ----------------------
  TEXT
end

puts text