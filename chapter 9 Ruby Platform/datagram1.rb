require 'socket'
port = ARGV[0]
ds = UDPSocket.new
ds.bind(nil,port)
loop do
    request,address = ds.recvfrom(1024)
    clientaddr = address[1]
    clientname = address[2]
    clientport = address[3]
    ds.send(response, 0, clientaddr,clientport)
    puts "COnnection from :#{clientname} #{clientarrd} #{clientport}"
end
