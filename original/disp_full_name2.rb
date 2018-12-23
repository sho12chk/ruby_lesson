class Human

  def initialize(info)
    @first_name = info[:first_name]
    @last_name = info[:last_name]
  end

  # @first_nameのアクセサ
  def first_name
    @first_name
  end

  # @last_nameのアクセサ
  def last_name
    @last_name
  end

  def self_introduction
    return "nilがあります" if name_cont_nil?
    # first_name, last_nameのアクセサを呼び出している
    "#{last_name} #{first_name}"
  end

  def name_cont_nil?
    # first_name, last_nameのアクセサを呼び出してnil?を実行している
    first_name.nil? || last_name.nil?
  end

end

tanaka = Human.new({first_name: "masashi", last_name: "tanaka"})
hoge = Human.new({first_name: "masashi", last_name: nil})

puts tanaka.self_introduction
puts hoge.self_introduction
