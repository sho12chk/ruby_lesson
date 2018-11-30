
text = "Hello World!!"
matched_text = text[6..-1]
puts matched_text

text =<<~TEXT
Hi!!
My name is Tanaka.
Wonderful to meet you.
TEXT

regexp = /[A-Z][a-z]+/

matched_text = text.scan(regexp)
puts matched_text

def countain_world?(text)
  /World!!/ =~ text ? "World!!を含みます" : "World!!を含みません"
end

text = "Hello World!!"
text2 = "Good Morning!!"

puts countain_world?(text)
puts countain_world?(text2)

p ('01A'..'01Z').to_a


text =<<~TEXT
私の個人情報は以下の通りです。

住所：332-0335
電話番号：090-332-0335
email：hoge@huga
TEXT

regexp_address = /\d{3}-\d{4}/
regexp_phone = /\d{3}-\d{3}-\d{4}/
regexp_email = /\w+@\w+/

puts regexp_address.match(text)
puts regexp_phone.match(text)
puts regexp_email.match(text)
