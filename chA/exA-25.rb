# Databases

# Web Access

require 'open-uri'
open('http://www.rubyinside.com/').readlines


require 'net/http'

Net::HTTP.start('www.rubyinside.com') do |http|
  req = Net::HTTP::Get.new('/test.txt')
  puts http.request(req).body
end
