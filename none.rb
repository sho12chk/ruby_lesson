class User
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end
end

users = []
users << User.new("suzuki", 33)
users << User.new("tanaka", 28)
users << User.new("saitou", 28)

# none? : ブロックの戻り値がすべてfalseであった場合にtrueを返す
user_name_presece = users.none?{|user| user.name.nil? }

puts user_name_presece ? "全員入力しています" : "名前が入力されていません"
