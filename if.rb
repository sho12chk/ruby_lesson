num = 10


# 通常の書き方
if num >= 10
  puts "大きい数です"
end

# 省略形
puts "大きい数です" if num >= 10

# 三項演算子
# 条件式(true or false) ? trueの時に行いたい処理 : falseの時に行いたい処理
puts num > 10 ? "10より大きいです" : "10より小さいです"
