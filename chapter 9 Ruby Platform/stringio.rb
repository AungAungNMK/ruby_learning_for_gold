require 'stringio'
input = StringIO.open("now is the time")
buffer = ""
output = StringIO.open(buffer,"w")
puts "StringIO is not subclass of IO."