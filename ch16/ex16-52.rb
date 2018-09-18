require 'uri'

email = %q{Some cool Ruby sites are http://www.ruby-lang.org/ and http://www.rubyinside.com and http://redhanded.hobix.com/}

URI.extract(email, ['http', 'https']) do |url|
  puts "Fetching URL #{url}"
  # Do some work here...
end
