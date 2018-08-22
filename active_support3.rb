require 'active_support'
require 'active_support/core_ext'

class User
  attr_accessor :name, :age

  def initialize(name, age)
    @name, @age = name, age
  end

end


user1 = User.new("suzuki", 33)
user2 = User.new(nil, nil)

user1_hash = user1.instance_values
user2_hash = user2.instance_values

p user1_hash["name"]
p user2_hash["name"]