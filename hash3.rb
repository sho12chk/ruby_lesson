user_hash = {name: 'suzuki', email: 'hoge@hoge.com'}

user_hash.each do |key, value|
  puts <<~TEXT
  key　#{key}
  value　#{value}
  TEXT
end