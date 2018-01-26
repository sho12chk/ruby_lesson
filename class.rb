class Talk
  attr_accessor :id
  attr_accessor :text

  def initialize
    self.id = 1
    self.text = "おはよう"
  end

  def hello

    puts <<~HEREDOC

      おはよう

      こんにちは

      こんばんは

      hello

      good morning

      good evening

    HEREDOC

  end

end


talk1 = Talk.new


puts talk1.text
talk1.hello








