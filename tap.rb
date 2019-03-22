class User
  attr_accessor :name, :age
  def initialize(name: "tanaka", age: 33)
    self.name = name
    self.age = age
  end
end

user = User.new.tap {|user| user.age += 1}

p user
