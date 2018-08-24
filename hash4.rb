require "active_support"
require "active_support/core_ext"

hash = {name: "Taro", age: 34}

hash = hash.stringify_keys

p hash
puts hash["name"]
puts hash["age"]
