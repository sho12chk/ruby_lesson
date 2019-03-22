# privateの使い方
# メソッドの呼び出しに制限をかけられる
# Railsのコントローラのストロングパラメータの部分でもよく使われる

class Bank

  def initialize(password)
    @password = password
  end

  def correct_password?(entered_password)
    password == entered_password ? "パスワードが合致しました" : "パスワードは間違っています"
  end

  private

  def password
    @password
  end
end

bank = Bank.new("hoge")

puts bank.correct_password?("fuga")
