max = 10
cnt = 1
sum = 0

while cnt <= max do
  sum = sum + cnt
  cnt = cnt + 1
end

print("The grand totals from 1 to ", max, " are ", sum, "\n")

#----------------------------

math = 80
eng = 70
phy = 30
che = 80

if math >= 80 && eng >= 80
  print("It is success.\n")
else
  print("It is a failure.\n")
end

if phy >= 80 || che >= 80
  print("It is success.\n")
else
  print("It is a failure.\n")
end

#------------------------------

score = 60

unless score >= 80
  print("It is success.\n")
else
  print("It is a failure.\n")
end

#------------------------------

score = 70

if score >= 80
  print("Results：excellent\n")
elsif score >= 60
  print("Results：good\n")
elsif score >= 40
  print("Results：passing \n")
else
  print("Results：failing\n")
end

#--------------------------

score = 60

if score >= 80
  print("It is success.\n")
else
  print("It is a failure.\n")
end

#---------------------------

score = 90

if score >= 80
  print("It is success.\n")
end

#----------------------------

num_value1 = 10
num_value2 = 3

print("addition ====>", (num_value1 + num_value2) ,"\n")
print("subtract ====>", (num_value1 - num_value2) ,"\n")
print("multiply ====>", (num_value1 * num_value2) ,"\n")
print("divide ======>", (num_value1 / num_value2) ,"\n")
print("residue =====>", (num_value1 % num_value2) ,"\n")
print("power =======>", (num_value1 ** num_value2) ,"\n")

#----------------------------

p "p method", "1", 1
puts "puts method", "1", 1
print("print method", "1", 1)

#----------------------------

#変数宣言
num = 10

#文字列結合
strValue = "number : " + num.to_s

#表示処理
print(strValue,"\n")
#---------------------------
#変数宣言
name = "Taro Yamada"
address = "Tokyo Shibuya-ku Yoyogi"
age = 25

#表示処理
print("NAME   :" + name)
print("\n")
print("ADDRESS:" + address)
print("\n")
print("AGE    :" , age)
print("\n")

#------------------------
#変数宣言
name = "Taro Yamada"
address = "Tokyo Shibuya-ku Yoyogi"

#表示処理
print("NAME   :" + name)
print("\n")
print("ADDRESS:" + address)
print("\n")
#-------------------------
#変数宣言
name = "Taro Yamada"
address = "Tokyo Shibuya-ku Yoyogi"

#表示処理
print("NAME   :", name)
print("\n")
print("ADDRESS:", address)
print("\n")
#---------------------------

print("Hello Ruby World!!")
print("Hello");print(" Ruby");print(" World!!")
