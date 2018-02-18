text = "名前を入力してください"

def conversation(name)
  name or return "名前を入力してください"

  a = <<~TEXT
  こんにちは#{name}さん
  私はRubyプログラムです
  Rubyの世界へようこそ！！！
  TEXT

end


puts text

name = gets.chomp

puts conversation(name)