require 'active_support'
require 'active_support/core_ext'


class User
  attr_accessor :name, :age

  def initialize(name, age)
    @name, @age = name, age
  end

end


user = nil
user2 = User.new("suzuki", 33)
user3 = User.new(nil, nil)


p user.blank?
p user.present?
p user2.name
p user2.age
# p user2.hobby
p user3.try(:name)
p user3.try(:age)
p user3.try(:hobby)
p user3&.name
p user3&.age
p user3&.hobby
