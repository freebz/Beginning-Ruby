# Cookies

#!/usr/bin/ruby

require 'cgi'
cgi = CGI.new

cookie = cgi.cookies['count']
# If there is no cookie, create a new one
if cookie.empty?
  count = 1
  cookie = CGI::Cookie.new('count', count.to_s)

  # Now send back an increased amount for the cookie to store
  cookie.value = (count.to_i + 1).to_s
end

cgi.out("cookie" => [cookie]) do
  "<html><body>You have loaded this page #{count} times</body></html>"
end
