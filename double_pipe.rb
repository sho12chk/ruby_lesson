class User
  attr_accessor :name
  def initialize(name)
    self.name = name
  end
end

user = nil

user ||= User.new("Suzuki")

puts user.name

user2 = User.new("Ogawa")

user2 ||= User.new("Suzuki")

puts user2.name
