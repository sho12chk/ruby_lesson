
(-10..20).each do |num|

  if num >= 10
    puts "numは10以上です"
  elsif num >= 5
    puts "numは5以上です"
  elsif num >= 1
    puts "numは1以上です"
  else
    puts "numは1より下です"
  end

  num = num + 1

end




(-10..100).each do |num|

  if num%15 == 0
    puts "FizzBuzz"
  elsif num%5 == 0
    puts "Buzz"
  elsif num%3 == 0
    puts "Fizz"
  else
    puts num
  end

end