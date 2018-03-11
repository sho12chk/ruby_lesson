
a = [1,2,3,4,5,6]

#処理を1行だけで書く時
a.delete_if {|n| n.odd?}

puts a

#-------------------

b = [1,2,3,4,5,6]

#中の処理を複数行書く時
b.delete_if do |n|
  n.odd?
end

puts b

#-------------------

c = [1,2,3,4,5,6]

c.delete_if {|n|
  n.odd?
}

puts c