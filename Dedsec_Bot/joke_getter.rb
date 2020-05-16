require 'nokogiri'
require 'open-uri'
require 'json'


class Joke_getter

attr_accessor :link,

def initialize

end

def find_joke
	url = 'https://nekdo.ru/'
	html = open(url)
	doc = Nokogiri::HTML(html)
    link = doc.search('//*[@class="text"]')
	for el in 0...link.length()
	  if el==link.length()-1
	    return link[el].content    
	  end
	end
end
end