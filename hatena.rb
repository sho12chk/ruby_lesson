require 'mechanize'
require 'csv'

url = "http://pro-web-engineer.com/"

agent = Mechanize.new
page = agent.get(url)

elements = page.search('h2 a')


CSV.open('test.csv','w') do |test|
  test << ["title","url"]
  elements.each do |ele|
    test << [ele.inner_text,ele.get_attribute(:href)]
  end
end
