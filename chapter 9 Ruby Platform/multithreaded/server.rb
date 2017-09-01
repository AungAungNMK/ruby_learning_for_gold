require 'socket'
server = TCPServer.open(2000)
while true
    client = server.accept
    Thread.start(client) do 
        handle_client(c)
    end
end
