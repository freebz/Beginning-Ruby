# Generic HTTP Servers

# WEBrick

require 'webrick'

server = WEBrick::GenericServer.new( :Port => 1234 )

trap("INT"){ server.shutdown }

server.start do |socket|
  socket.puts Time.new
end
