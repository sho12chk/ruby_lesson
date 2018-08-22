def params
  {name: "suzuki", age: 33}
end

hash = {name: "suzuki", age: 33}

array = params.map do |k, v|
  if hash.key?(k)
    v == hash[k] ? [k, nil] : [k, hash[k]]
  else
    [k, v]
  end
end

p array.to_h
