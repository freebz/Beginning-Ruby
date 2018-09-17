# Multi-Client TCP Servers

require 'socket'

loop do
  Thread.start(server.accept) do |connection|
    while line = connection.gets
      break if line =~ /quit/
      puts line
      connection.puts "Received!"
    end

    connection.puts "Closing the connection. Bye!"
    connection.close
  end
end
