full = '/home/zz/bin/ruby.exe'
file = File.basename(full)
print File.basename(full, '.exe')
puts dir = File.dirname(file)
print File.dirname(file) # .
print File.split(full) #.["/home/zz/bin", "ruby.exe"]
puts
puts File.extname(full) # .exe
puts File.extname(file) # .exe
puts File.extname(dir) # ''
print "This is file identicl test:"
puts File.identical?("ruby", "ruby1.9")
print File.join('home', 'zz') #home/zz :relative
puts
puts File.join('','home','zz') #/home/zz :absolute
=begin
#puts Dir.chdir('/usr/bin') #current working directories
print File.expand_path("ruby")
print File.expand_path("~/ruby")
print File.expand_path("~zz/ruby")
print File.expand_path("ruby", "usr/local/bin")
print File.expand_path("ruby", "../local/bin")
print File.expand_path("ruby", "~/bin")
=end


######
puts File.fnmatch("*.rb", "hello.rb")
puts File.fnmatch("*.[ch]", "hello.c")
puts File.fnmatch("*.[ch]", "hello.h")
puts File.fnmatch("?.txt", "hello.txt")
flags = File::FNM_PATHNAME | File::FNM_DOTMATCH
puts File.fnmatch("lib/*.rb", "lib/a.rb", flags)
puts File.fnmatch("lib/*.rb", "lib/a/a.rb", flags)
puts File.fnmatch("lib/**/*.rb", "lib/a.rb", flags)
puts File.fnmatch("lib/**/*.rb", "lib/a/a.rb", flags)

# file listing 
#get the name of  all file in the directriesconfig
#filename = Dir.entries("config")
#Dir.foreach("config") {|filename| ........}
 #'.' include the current directory and
 #'..' include the parent directory.
 #To obtain the list of file use Dir.[]
Dir['*.data'] #any file that end with .data
Dir['ruby.*'] #any file that start with 'ruby.'
Dir['?'] #any single charcter file name
Dir['*.[ch'] #any file that end with .c and .h
Dir['*.{java,rb}'] #aany file that end with .java or .rb
Dir['*/*.rb'] #any ruby program in nay direct sub-directory
Dir['**/*.rb'] #any ruby program in any descendent directory
puts Dir.getwd #print current working directories
puts Dir.chdir("..") #chnage CWD to the parent
puts Dir.chdir("../sibling") #changeg again to the subling
puts Dir.chdir("/home")  #change to absolute 
puts Dir.chdir #chnageg to use's  home directory
 print home = Dir.pwd # is the alias for getwd
Dir.glob('*.rb') {|f| -----}# iterate all ruby file
Dir.glob('*')#does not include names beginning with '.'
Dir.glob('*',File::FNM_DOTMATCH)

