nested_array = [[1, 2, 3], [4, 5, 6]]
p array = nested_array.flat_map {|array| array.map {|n| n * 10 } }

nil_array = [1, 2, 3, nil, nil, 6]
p array = nil_array.compact
