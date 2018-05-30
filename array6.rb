nested_array = [[1, 2, 3], [4, 5, 6]]
p flat_array = nested_array.flat_map {|array| array.map {|n| n * 10 } }
