require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.rubyinside.com/test.html'))
puts doc.css("h1").first.inner_html


list = doc.css("ul").first
list.css("li").each do |item|
  puts item.inner_html
end


list = doc.at("ul")
highlighted_item = list.at(".highlighted")
puts highlighted_item.inner_html
