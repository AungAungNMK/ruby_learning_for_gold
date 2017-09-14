require 'stringio'
sio = StringIO.open "Hello StringIO."
sio = StringIO.open "Hello String IO." do |io|
    p io.read
    nil
end
#Hello StringIO
p sio #nil 
 #putc 
 sio = StringIO.new 
 p sio.putc "a"
 p sio.string 
 p sio.string = ""
 p sio.putc "bcd"
 p sio.string  # io,string only print the first character 
#p sio.putc #argument error : you need to give at least one string in  putc 

