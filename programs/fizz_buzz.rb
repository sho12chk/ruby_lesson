#FizzBuzz

#変数 num を定義
#numが15で割り切れる数 => FizzBuzz
#numが5で割り切れる数 => Buzz
#numが3で割り切れる数 => Fizz

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