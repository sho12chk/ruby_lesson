require 'mechanize'

agent = Mechanize.new
page = agent.get('https://www.wantedly.com/projects?type=mixed&page=1&occupation_types%5B%5D=engineer&hiring_types%5B%5D=mid_career&keywords%5B%5D=rails&keywords%5B%5D=%E5%AE%9F%E5%8B%99%E6%9C%AA%E7%B5%8C%E9%A8%93')

h_tag = page.search('h1')
a_tag = page.search('.project-title a')

puts h_tag.inner_text
puts a_tag.inner_text
