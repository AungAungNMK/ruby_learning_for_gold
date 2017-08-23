#Array.pack
#String.unpack
a = [1,2,3,4,5,6,7,8,9,10]
puts b = a.pack('i10')
print c = b.unpack('i*')
puts c == a
m = "hello world" 
puts 
print data = [m.size, m] # length first , and then bytes
template = 'Sa*'        #unsigned short any number of ASCII character
print b = data.pack(template) #\v\00hello world
puts
print b.unpack(template) #[11,hello world]
