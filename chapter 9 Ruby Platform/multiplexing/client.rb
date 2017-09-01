require 'socket'
host,port = ARGV
begin
    STDOUT.print "Connecting....."
    STDOUT.flush
    s = TCPSocket.open(host,port)
    STDOUT.puts "done"
    #diaplay the info about the connection
    local,peer = s.addr, s.perraddr
    STDOUT.print "Connected to #{peer[2]}:#{peer[1]}"
    STDOUT.puts "using local port #{local[1]}"
    #wait a while
    begin
        sleep(0.5)
        msg = s.read_nonblock(4096)
        STDOUT.puts msg.chop
    rescue SystemcallError
    end
    loop do
        STDOUT.print '>'
        STDOUT.flush #make the prompt is visible
        local = STDIN.gets
        break if !local
        s.puts(local)
        s.flush
        response = s.readpartial(4096)
        puts (response.chop)
    end
rescue
    puts $! #display the exception the user
ensure
    s.close if s
end
