#+ ==> concatenation
#<< ==> appends
#* ==> repetition
#([]) ==> indexing
s = "Hello"
puts "Original: #{s}"
puts s.concat(" world")
puts s.insert(5, " there")
puts s.slice(0,5)
puts s.slice!(5,6)
s.eql?("Hello World")
puts s.length
puts s.size
puts s.bytesize
puts s.empty?
puts "".empty?
#regular expression in string using index
s = "hello"
puts s.index('l')   #:2 >index of firsst l in string
puts s.index(?l)    #: 2 >work with character code as well
puts s.index(/l+/)  #: 2 >work with regular expression
puts s.index('l',3) #: 3>index of the first 'l' in the string 
puts s.index('Ruby') #: nil> not there
puts s.rindex('l')  #: 3> index of rigth most 'l' in the string 
print "index of right most 'l' in string at or before 2:"
puts s.rindex('l',2) #: 2 >index of right most 'l' in string at or before 2
# checking for prefix and subfix
puts s.start_with? "hell"
puts s.end_with? "z"
#presence of sub string 
puts s.include?('ll')
puts s.include?(?H)
# pattern matching 
puts s =~ /[aeiou]{2}/ #nil >no double vowel in the stirng 
puts s.match(/[aeiou]/) {|m| m.to_s} #e >return first founding vowel
#splitting the strng into sub string based on delimator strign or pattern 
print  "This is it".split
puts 
print "hello".split('l')
puts
print "1,2,3".split(/,\s*/) #comma and space delimitor
# splittting a string into two parts plus delimitor
# this methods always return array of 3 strings 
print "bananaasaananananananna".partition("an")#["b", "an", "ana......."]
print "banana".rpartition("an")#["ban", "an", "a"] >start from right 
print "a123b".partition(/\d+/)#["a", "123", "b"]>work with reexp
puts 
#search and replace  the first (sub,sub!) or all (gsub, gsub)
puts s.sub('l',"L") #"hello":
puts s
puts s.gsub("l","L")
puts "original string #{s}"
puts s.sub!(/(.)(.)/, '\2\1') #match and swap first two letter
puts "original string #{s}" 
puts s.sub!(/(.)(.)/, "\\2\\1") # double backslack for double code
puts "original string #{s}" 
# sub and gsub can also compute a replacement strign with a block
puts "hello world".gsub(/\b./) {|match| match.upcase }
# can specify a hash to map matches to replacement
puts s.gsub(/[aeiou]/,"a"=>0,"e"=>1,"i"=>2,"o"=>3,"u"=>"4")
#case modification methods
s = "world"
puts s.upcase #all 
puts s.upcase! #all 
puts s.downcase #all 
puts s.capitalize #first letter
puts s.capitalize! # first letter
puts s.swapcase # swap cap and small 
# case insensitive comparison(ASCII text only)
puts "world".casecmp("WORLD") #if they equal return 0
puts "a".casecmp("B") # if the last is greater return -1
puts "D".casecmp("C") # if hte first is greter return 1



# string define a number of methods for adding and dremoving whitespace.Most existing in mutating and nonmutating versions
s = "hello\r\n"
puts "original string: #{s}"
puts s.chomp!                          #: hello >remove one line terminator from end
puts "after chomp: #{s}"
puts s.chomp                          # hello :no line terminator so no change
puts s.chomp("o")                     #"hello" :remove "o" from end
$/ = ";"                              #set global record separator $/ to ;
puts "hello;".chomp                   #hello :now chomp remove ; and end
#chop remove trailing character or line terminator (\n,\r,or \r\n)
s = "hello\n"
print "For thw chop string: #{s}"
puts s.chop!                      # hello :line terminator removed and s modified
puts s.chop                       #hell :last char removed ,s not midified
puts "".chop                      #"" :no char to remove
puts "".chop!                     #nil nothing changed 


#strip all white space (including \t,\r,\n) from left ,right ,or both
# strip!, lstrip!, and rstrip! midify the string in place
s = "\t hello \n"
puts s.strip                      #"hello"
puts s.lstrip                     #"hello \n"
puts s.rstrip                     #"\t hello"


# left-justify, right-justify, or center a stirng in a fied n-character wide
#there are no muttor version ot these methods .See slaso printf
s = "x"
puts s.ljust(3, '-')              #"x--"
puts s.rjust(3, '-')              #"--x"
puts s.center(3, '-')             #"-x-"
puts s.center(5, '-')             #"--x--"
puts s.center(7, '-=')             #"-=-x-=-"



#sting my be enumerated byte-by-byte or line-by-line with each_byte and each_line iterators .
ss = "A\nB"
ss.each_byte { |b| print b, " "} # print 65 10 66
puts 
ss.each_line { |b| print b.chomp }
puts 

# Enumerate each character as a 1-character string 
#ths does not work fro multibyte string in 1.8
# it work for multibyte in 1.9
print ss.bytes.to_a       #[65, 10, 66]
puts 
print ss.lines.to_a      #["A\nB"]
puts 
print ss.chars.to_a      #["A", "\n", "B"]

# string defines a number of methods for parsing numbers from strings and for conversion strings to symbols 
puts 
puts "10".to_i # 10
puts "10".to_i(10) #10 :arguemtns is redix between base-2 and base-36
puts "10x".to_i     # 10 :non numeric is ignored
puts "ten".to_i     # 0 :does not raise exception in bad input
puts "10".oct       #8 :8^0
puts "10".hex       #16 :16^0
puts "0xff".hex     #255 :hex number may begin with 0x
puts "1.1 dozen".to_f #1.1
puts "6.02e23".to_f # 6.02e+23
puts "one".to_sym   # :one
puts "two".intern   # :two :intern is synonym for to_sym


#Finally some miscellaneous String method

#increment a string
puts "a".succ #b ,succeessor of a, also,,succ!
puts "aaz".next # next is synonym ,als next!
"a".upto("e") { |z| print z }
puts 
puts "hello".reverse # olleh ;also reverse!
#debugging 
puts "hello\n".dump #"\"hello\\n"" :escape special character
puts "hello\n".inspect # work like dump


# translation from one set of char to another 
puts "hello".tr("aeiou","AEIOU") #hEllO, cap vowel also tr!
puts "hello".tr("aeiou", " ")  # h ll :convert vowel to space
puts "bead".tr_s("aeiou", " ") # convert and remove duplicates

#checksum
puts "hello".sum #532 :weak 16-bit checksum
puts "hello".crypt("ab") #abl0JrMf6tlhw :one way to encrypt checksum
                         #pass two alphanumeric character as "salt"
                         #the result may be platform dependent


#counting letter, deleting letters, and removing duplicates
puts "hello".count('aeiou')   #2  
puts "hello".delete('aeiou')  #hll :delete!                      
puts "hello".squeeze('a-z') #helo :remove dupicate
puts "hello".count('a-z','^aeiou') #3 :count lowercase
puts "hello".delete('a-z','^aeiou') #eo :delete lowercase 














