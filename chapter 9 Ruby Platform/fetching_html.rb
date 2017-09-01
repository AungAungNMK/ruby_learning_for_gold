
require 'net/http'
host = "localhost"
path = "/index.html"
http = Net::HTTP.new(host)
headers, body = http.get(path)
if headers.code = "200"
    print body
else
    puts "#{header.code} #{header.message}"
end
