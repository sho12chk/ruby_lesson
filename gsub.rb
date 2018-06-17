text = "ご希望お届け日　2週間後"
week = text.gsub(/\W/, "")
p "到着予定日 #{week}週間後"

text_list = []
text_list << "希望としては1,2週間後がいいです"
text_list << "希望としては1~2週間後がいいです"
text_list << "う〜ん、1から2週間後かな"
text_list << "1~2週間後でいいですよ"
text_list << "1か、もしくは2週間後でいいですよ"

text_list.each do |text|
  p text.gsub(/.*(\d+).*(\d+).*/, '到着予定日 \1-\2週間後')
end

hash = '{:name => "suzuki", :age => 33, :gender => "man"}'

puts hash.gsub(/:(\w+) *=> */, '\1:')