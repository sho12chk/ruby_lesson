def foo(num, *a, **hash)       # *aがsplatパラメータ
  puts "a: #{a}"
  puts num
  puts hash
end

foo(1,:one, "two", [:three, "four"], {name: "suzuki", age: 33})

def variadic_keyword(arg, *array_args, **hash_args)
  p arg
  p array_args
  p hash_args
end

variadic_keyword(1,2,3,4,5)
variadic_keyword(1,2,3,"hoge","huga", april:"spring", july:"summer")
variadic_keyword(1,april:"spring", july:"summer")