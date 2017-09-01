f = File.open("text.txt")
f.pos 
f.pos = 10
f.tell #10 :  synonym for pos
f.rewind # go back to position 0,resset lineno to 0.
f.seek(10,IO::SEEK_SET) #skip to absolute position 10
f.seek(10,IO::SEEK_CUR) # skip 10 byte from current
f.seek(-10,IO::SEEK_END) #skip 10 bytes from 10
f.seek(0,IO::SEEK_END) # skip to very end of file
f.eof? #true
pos = f.sysseek(0,IO::SEEK_CUR) #get current
f.sysseek(pos,IO::SEEK_SET) #return to the original
f.eof? #true if the string is at EOF
f.closed? # true if teh stream have been closed
f.tty? #true: if the stream is interactive
