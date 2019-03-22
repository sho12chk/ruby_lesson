require 'active_support'
require 'active_support/core_ext'

users = ["tanaka", nil, "yamada", "", "satou"]

new_users = users.reject(&:blank?)

puts new_users
