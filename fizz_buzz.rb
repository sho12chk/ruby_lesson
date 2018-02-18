def fizz_buzz(n)

  if n%15 == 0
    "Fizz Buzz\n"
  elsif n%5 == 0
    "Buzz\n"
  elsif n%3 == 0
    "Fizz\n"
  else
    "#{n}\n"
  end

end

i = 0
text = ""

while i <= 20
text += fizz_buzz(i)
i += 1
end


puts text