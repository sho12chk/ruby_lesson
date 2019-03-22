# 引数のデフォルト値

class Person
  attr_accessor :name

  def initialize(name = nil)
    self.name = name
  end

  def introduces
    self.name ? "私の名前は#{self.name}です" : "データなし"
  end

end

yoshito = Person.new

puts yoshito.introduce
