class Google

  attr_accessor :title, :contents

  def initialize(data)
    self.title = data[:title]
    self.contents = data[:contents]
  end

  def search(keyword)
    keyword_list = split_keyword(keyword)
    ans = []
    keyword_list.each do |keyword|
      ans << ((self.title.include?(keyword) || self.contents.include?(keyword)) ? "#{keyword}：データがヒットしました" : "#{keyword}：該当データがありません")
    end
    ans
  end

  def split_keyword(keyword)
    keyword.split(/ | /)
  end

end

google = Google.new(title: "hoge", contents: "fuga")

puts google.search("hoge fuga")
puts google.search("fuga hage")
