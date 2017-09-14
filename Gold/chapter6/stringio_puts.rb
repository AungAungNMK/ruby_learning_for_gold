require "stringio"
sio = StringIO.new

p sio.puts "abc" #nil
p sio.string #abc\n

sio.string = ""
sio.puts ["abcd","efgh","ijkl"]
p sio.string #"abcd\nefgh\nijkl\n"

sio.string = ""
sio.puts nil
p sio.string #"\n"

sio.string = ""
sio.print "abc","def","ghi"
p sio.string #"abcdefghi"
#printf
#read

sio.string = "hello world."
p sio.read 5 #hello
p sio.read #"  world"
p sio.read # ""
p sio.read 1  #nil
sio.pos = 0
p "using output"
outputs = "" 
p sio.read 5 #" owrl" pos:0-5
p sio.read 5, outputs #pos:5-5
p outputs #"hello" 

#getc
#readchar
sio.string = "Hello World."
p sio.getc #"H" :72
sio.pos = sio.string.length
sio.getc #end of file :so it will show nothing :nil
#sio.readchar #EOFError

#gets 
#readline 
sio.string = "Hello World.\n Hello IOString World."
p sio.gets #"Hello World.\n":gets the line from start to end
p sio.readline #" Hello IOString World."
p sio.gets #nil :coz the position right now is at the end of file 
#p sio.readline #EOFError 

#pos =(n)
#seek (offser, [,whence])
sio.string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
sio.pos = 10
p sio.readline#start from pos 10-end 
sio.seek -10, IO::SEEK_END #now go to the last to -10 pos
p sio.readline
