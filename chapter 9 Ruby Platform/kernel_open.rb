#utime = open("|uptime") { |f| g.gets}
require 'open-uri'
f = open("http://www.google.com/")
webpage = f.read
f.close