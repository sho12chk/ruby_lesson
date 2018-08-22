require 'active_support/all'
require 'colorize'
# run to install : gem install colorize

array = ["hoge", "fuga"]
puts "present? #{array.present?}".red
array.present? && array.each do |data|
  p data
end

array2 = []
puts "present? #{array2.present?}".green
array2.present? && array.each do |data|
  p data
end
