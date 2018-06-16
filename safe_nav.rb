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
users << nil

# Safe Navigation Operator
# puts users.map{|user| user.name}
puts users.map{|user| user&.name}