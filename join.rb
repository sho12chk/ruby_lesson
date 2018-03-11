def greeting(*names)
  "#{names.join("と")}、こんにちは！！"
end



puts greeting("田中さん", "佐藤さん", "鈴木さん")

puts greeting(%w!田中さん 佐藤さん 鈴木さん!)