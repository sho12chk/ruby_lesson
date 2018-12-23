class Person
  attr_accessor :first_name, :last_name

  def initialize(info)
    info = defaults.merge(info)
    self.first_name = info[:first_name]
    self.last_name = info[:last_name]
  end

  def defaults
    {first_name: "姓なし", last_name: "名なし"}
  end

  def disp_full_name
    return "nilがあります" if name_cont_nil?
    "#{self.last_name} #{self.first_name}"
  end

  def name_cont_nil?
    self.first_name.nil? || self.last_name.nil?
  end

end

tanaka_masashi = Person.new({first_name: "masashi", last_name: "tanaka"})
tanaka_masashi_beta = Person.new({hobby: "soccer"})
masashi = Person.new({first_name: "masashi", last_name: nil})
tanaka = Person.new({first_name: nil, last_name: "tanaka"})
hoge = Person.new({})

puts tanaka_masashi.disp_full_name
puts tanaka_masashi_beta.disp_full_name
puts masashi.disp_full_name
puts tanaka.disp_full_name
puts hoge.disp_full_name
