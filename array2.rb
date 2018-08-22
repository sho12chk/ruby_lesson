names = ["suzuki", "saitou", "fnakoshi", nil]

names.each do |name|
  puts name&.upcase
  puts name&.upcase
  puts name&.upcase
  puts name&.upcase
  puts name&.upcase
end

names.each{|name| name&.upcase}