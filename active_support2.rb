require 'active_support'
require 'active_support/core_ext'


array = ['string']
duplicate = array.dup
duplicate.push 'array'
duplicate.push('hash','boolean')

p array
p duplicate

duplicate.first.gsub!('string', 'foo')

p array
p duplicate