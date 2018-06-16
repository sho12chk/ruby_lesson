a = nil
b = "hello"
a = a || b

puts a

class User
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end
end

users = []
users << User.new("tanaka", 33)
users << User.new("suzuki", 28)
users << user_a ||= User.new("未入力", "未入力")

puts users.map(&:name)
