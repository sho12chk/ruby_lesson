require 'mechanize'

class GoogleSearch
    def snipet_scraping(keyword)
        submit_keyword(keyword)
    end

    private

    def submit_keyword(keyword)
        agent = Mechanize.new
        agent.get('https://www.google.co.jp/')
        agent.page.form_with(name: 'f') do |form|
            form.q = keyword
        end.submit
   end
end

result = GoogleSearch.new.snipet_scraping("最近の流行りのダイエット")
p result
