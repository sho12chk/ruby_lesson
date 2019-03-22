class Product
end

Product.class_exec(10) do |num|
  # p num => 10
  1.upto(num) do |i|
    attr_accessor :"var#{i}"
  end
end

# 以下の書き方でもいい
# Product.class_exec(10) do |num|
#   # p num => 10
#   1.upto(num) {|i| attr_accessor :"var#{i}" }
# end

product = Product.new
product.var4 = "Cool"
puts product.var4
