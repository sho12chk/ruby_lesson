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
users << User.new(nil, 28)

user_name_presece =  users.any?{|user| user.name.nil? }

puts "名前のないユーザーがいます" if user_name_presece