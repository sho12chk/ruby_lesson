require 'active_support'
require 'active_support/core_ext'


class User
  attr_accessor :name, :age

  def initialize(name, age)
    @name, @age = name, age
  end

end

class Disp

  def self.info(list)
    text = ""
    list.each do |data|
      return "nilがあります" unless data.present?

      text += <<~TEXT
      お名前：#{data.name}
      年齢：#{data.age}
      TEXT
    end
    text
  end

end

list = []

list << user = nil
list << user2 = User.new("suzuki", 33)
list << user3 = User.new("saitou", 24)

puts Disp.info(list)
