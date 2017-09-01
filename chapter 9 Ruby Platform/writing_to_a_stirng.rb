o = STDOUT
o.putc(76)
o.putc("B")
o.putc("CD")
o = STDOUT
o << x       #x.to_s
o << x << y  #x.to_s + y.to_s
o.print      #$_ + $\
o.print s    #s.to_s + $\
o.print s,t   #s.to_s + t.to_s + $\
o.printf fmt,*args #output fmt%[args]
o.puts      #output newline
o.puts x  #x.to_s.chomp + newline
o.puts x,y #x.to_s + newline + y.to_s + newline
o.puts [x,y] #same as above
o.write s ##s.to_s : return s.length
o.syswrite s #lowlevel version of write
