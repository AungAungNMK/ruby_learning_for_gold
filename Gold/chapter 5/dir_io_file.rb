dir = Dir.open("D:/Ruby/for _ruby_exam/O REILLY/Gold/chapter 5")
#C:\Users\Public
dir.each{|file| puts file}
Dir.open("D:/Ruby/for _ruby_exam/O REILLY/Gold/chapter 5"){|dir| puts dir.path}
=begin
Dir.pwd / Dir.getpwd
Dir.chdir
Dir.mkdir
Dir.rmdir / Dir.unlink / Dir.delete
=end

p Dir.pwd
#p Dir.mkdir("D:/Ruby/for _ruby_exam/O REILLY/Gold/chapter 5/foo")
file = File.open('text.txt')
p file.read
file.close
p Encoding.default_external
file = File.open('text.txt')
p file.read
p file.read.encoding
p File.open('text.txt') {|file| file.read}
    p "r : read: default_mode"
   p "r+ :read and write start from the beginning"
    p "w :read only: create new file or truncate the existing one"
    p "w+ :read and write and write :same as above"
    p "a :read :apend the file "
    p "a+ :same as above"
p File.open('new-file', "w") {|file| file.write "This is the created new file"} #28 :all word count
p File.mtime('text.txt') #cretaed time
p File.open('text.txt') {|file| file.mtime }
p File.directory?("D:/Ruby/for _ruby_exam/O REILLY/Gold/chapter 5")
p File.directory?("C:/Ruby")
p File.chmod(0644, 'text.txt') #1
p File.chown(501,20,'text.txt') #1
p File.utime(Time.now,Time.now,'text.txt') #1
p File.expand_path('text.txt')
#delete / unlink
#truncate
#rename
#File.delete('text.txt')
#File.truncate('text.txt',0)
#File.open('text.txt',"w") {|file| file.truncate(0)}
#File.rename('text.txt', 'test1.txt')
p File.open('text.txt', "w") {|file| file.flock(File::LOCK_EX)}
#IO Class
p io = open('text.txt')
#p io = open('text.txt', 'w+:shfift_jis:euc-jp')
#p io = open('| ls-la')
p $stdout.write('There is new thehnology')
open('text.txt'){|file| puts io.read}