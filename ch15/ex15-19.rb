# A GServer-Based Chat Server

require 'gserver'

class ChatServer < GServer
  def initialize(*args)
    super(*args)
    # Keep an overall record of the client IDs allocated
    # and the lines of chat
    @client_id = 0
    @chat = []
  end
end


server = ChatServer.new(1234)
server.start

loop do
  break if server.stopped?
end
