numbers = [2, 5, 6, 4, 2, 8]

# 繰り返し処理を行った後に配列を返す
numbers.map do |num|
  num * 3
end

p numbers

# 変数を用意
result_num = numbers.map do |num|
  num * 3
end

p result_num

# ! 破壊的なメソッド => 元のデータを書き換える
numbers.map! do |num|
  num * 3
end

p numbers

# 省略形
p numbers.map! {|num| num * 3}


names = ["yamada", "saitou", "takahashi", "toida"]

names.map! do |name|
  name + "さん"
end

p names
puts names
