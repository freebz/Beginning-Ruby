require 'net/ping'

if Net::Ping::TCP.new('www.google.com', 80).ping
  puts "Pong!"
else
  puts "No response"
end
