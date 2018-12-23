data = {
  category: {
    name: 'satou',
    email: {
      gmail: 'hoge@gmail.com',
      yahoo: 'hoge@yahoo.co.jp',
      outlook: 'hoge@outlook.jp'
    }
  }
}

puts data.dig(:category, :email, :outlook)
puts data.dig(:category, :email, :excite)
