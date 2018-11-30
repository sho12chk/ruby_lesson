require "active_support"
require "active_support/core_ext"

row = {name: "satou", age: 33, email: "hoge@fuga"}

row.to_a.from(0).each_slice 1 do |data|
  p data
end

row.to_a.from(1).each_slice 2 do |data|
  p data
end

row.to_a.from(1).each_slice 3 do |data|
  p data
end

row.to_a.from(2).each_slice 2 do |data|
  p data
end

row.to_a.from(3).each_slice 2 do |data|
  p data
end
