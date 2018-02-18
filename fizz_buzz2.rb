def fizz_buzz(num)
  if num%15 == 0
    "FizzBuzz\n"
  elsif num%5 == 0
    "Buzz\n"
  elsif num%3 == 0
    "Fizz\n"
  else
    "#{num}\n"
  end
end

text = ""

(1..30).each do |num|
  text += fizz_buzz(num)
end

puts text