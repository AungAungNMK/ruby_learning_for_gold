require 'socket'
host,port = ARGV
s = TCPSocket.open(host,port) do |s|
    while line = s.gets
     puts line.chomp
    end
end
