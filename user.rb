class User

  attr_accessor :id, :name, :age, :hobby

  def initialize(id, name, age, hobby)
    self.id = id
    self.name = name
    self.age = age
    self.hobby = hobby
  end
end

text = ""
user1 = User.new(1, "yoshito", "30", "サッカー")
user2 = User.new(2, "kamizato", "10", "フットサル")
user3 = User.new(3, "satou", "15", "駅伝")
user4 = User.new(4, "suzuki", "22", "茶道")
user5 = User.new(5, "uehara", "37", "野球")

users = [ user1, user2, user3, user4, user5]

users.each do |n|

  text += <<~TEXT

  ユーザid：#{n.id}
  名前：#{n.name}
  年齢：#{n.age}
  趣味：#{n.hobby}

  TEXT

end

puts text


