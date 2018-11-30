array = { "apple" => 3, "grape" => 2, "peach" => 5 }.flatten
array.delete_if {|item| item =~ /[0-9]+/}
p array
