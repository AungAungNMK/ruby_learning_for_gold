require 'socket'
host = '127.0.0.1'
port = 8080
path = '/index.html'
request = "GET #{path} HTTP/1.0\r\n\r\n"
socket = TCPSocket.open(host,port)
socket.print(request)
response = socket.read
headers,body = response.split("\r\n\r\n",2)
print body
###the next testing 
