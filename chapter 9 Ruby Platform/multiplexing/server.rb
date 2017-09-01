require 'socket'
server = TCPServer.open(2000) #port no.
sockets = [server] #an array of socket
while true
    ready = select(sockets) # wait for a socket to be ready
    readable = ready[0] #these are available
    readable.each do [socket]
        if socket == server #server socket is ready
            client = server.accept #accept a new cllient
            sockets << client #add it the set of socket
            client.puts "Reversel serice v0.01 running on #{Socket.gethostnae}" # tell the lcient what and where has been connected
            log.puts "Accepted connection form: #{client.peeraddr[2]}"
        else
            input = socket.gets
            if !input 
                log.puts "CLient on #{socket.peeraddr[2]} disconnected}"
                sockets.delete(socket)
                socket.close
                next
            end
            input.chop!
            if(input == "quit")
                socket.puts("Bye!");
                sockets.delete(socket)
                socket.close
            else
                socket.puts(input.reverse)
            end
        end
    end
end

