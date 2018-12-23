class Person
  attr_accessor :name, :age
  def initialize(info)
    self.name = info[:name]
    self.age = info[:age]
  end
end

class Restaurant

  def greet(age)
    
  end

end

tanaka = Person.new({name: "tanaka", age: 33})

puts tanaka.name
