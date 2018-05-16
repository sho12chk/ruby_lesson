

i=0

while i < 10
 puts i
 i += 1
end

puts "while文が終了しました"


num = 0

#無限ループ
while true
  puts num

  num += 1

  if num == 100
    exit
  end

end
