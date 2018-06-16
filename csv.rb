require 'csv'

CSV.foreach('users_data.csv') do |row|
  puts <<~TEXT
  #{row[0]}様 #{row[1]}歳
  TEXT
end

puts "------ header true ------"

CSV.foreach('users_data.csv', headers: true) do |row|
  puts <<~TEXT
  #{row["name"]}様 #{row["age"]}歳
  TEXT
end
