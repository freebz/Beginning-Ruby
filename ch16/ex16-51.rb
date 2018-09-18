require 'uri'
puts URI.extract('http://www.rubyinside.com/ and mailto:me@privacy.net', ['http']).inspect
