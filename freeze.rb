CONTACT_PHONE_NUMBER = "03-1234-5678".freeze
puts CONTACT_PHONE_NUMBER << "@#$%^"

ADMIN_NAMES = ["Tom", "Alice"].freeze.each(&:freeze)
ADMIN_NAMES << "Taro"