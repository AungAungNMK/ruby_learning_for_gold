p Marshal.dump({:a => 1, :b => 3, :c => 5})
p file = File.open("D:/Ruby/for _ruby_exam/O REILLY/Gold/chapter 5/marshaldata","w+")
p Marshal.dump({:a => 1, :b => 3, :c => 5},file)
p str = Marshal.dump({:a => 1, :b => 3, :c => 5})
p Marshal.load(str) #show output with load in Marshal
p file = File.open("D:/Ruby/for _ruby_exam/O REILLY/Gold/chapter 5/marshaldata","w+")
p Marshal.dump({:a => 1, :b => 3, :c => 5},file)
file.rewind #go to the start of file
p Marshal.load(file)
