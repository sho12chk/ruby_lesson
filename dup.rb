class Human
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

original = Human.new("Kamizato")
fake = original.clone

puts "お前は偽物だ！！！" unless fake.equal?(original)
