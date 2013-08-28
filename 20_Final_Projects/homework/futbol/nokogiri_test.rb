require "rubygems"
require "nokogiri"
require "open-uri"

url = "http://espnfc.com/team/squad?id=359&cc=5901"
doc = Nokogiri::HTML(open(url))
puts doc.at_css("title").text
doc.css("#statsBody_1, a").each do |item|
	puts item.path
end



