module Chatting
  def bark
    "bowwow"
  end
end

class Dog
  include Chatting
end

dog = Dog.new

puts dog.bark
