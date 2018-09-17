# Building a Simple TCP Server

require 'socket'

server = TCPServer.new(1234)

while connection = server.accept
  while line = connection.gets
    break if line =~ /quit/
    puts line
    connection.puts "Received!"
  end

  connection.puts "Closing the connection. Bye!"
  connection.close
end
