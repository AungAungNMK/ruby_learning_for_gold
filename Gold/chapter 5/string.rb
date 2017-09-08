puts "==, > , <, <=, >=, <=>, and casecmp"
 puts "abc" == "abc" #true
 puts "abc" == "ABC" #false
 puts "a" < "b" #true
 puts "A" > "a" #false
puts "aa" > "b" #flase
puts "a" <=> "b" #-1
=begin
a ="abc"
b = a.encode("UTF_8") #abc
b.encoding
a == b #true
a = "Japanese font"
b = a.encode("EUC_JP")
a == b #false
=end
#split
puts "Test [],slice,slice!,split"
print "abcdefg".split('d') #["abc", "efg"]
print "abcdefg".split(/d/) #["abc", "efg"]
#[]
puts a = 'abcdefg'[6] #g :[the position]
#slice
puts a = 'abcdefg'.slice(2) #find the position 2 element
puts 'abcdefg'[2] # also the position
puts 'abcdefg'[-2] # f
a = 'abcdefg' 
a.slice!(2) #c
puts a #abdefg
puts 'abcdefg'[1..3] #bcd
puts 'abcdefg'.slice(1..3)
a = 'abcdefg'
puts a.slice!(1..3) #bcd
puts a #aefg
puts 'abcdefg'[1,3] #bcd
puts 'abcdefg'.slice(1,3) #bcd
puts 'abcdefg'[-2,3] #fg
puts 'abcdefg'[-3,3] #efg
a = 'abcdefg'
a.slice!(1,3) #bcd
puts a #aefg
puts 'abcdefg'["bc"] #bc
puts 'abcdefg'.slice("bc") #bc
puts 'abcdefg'.slice("bd") #nil
a = 'abcdefg'
a.slice!("bc")
puts a #adefg
puts 'abcdefg'[/bc/] #bc
puts 'abcdefg'.slice(/bc/) #bc
puts 'abcdefg'[/bd/] #nil
a = 'abcdefg'
a.slice!(/ab/)
puts a  #cefg
puts "[]= , insert"
a = 'abcdefg'
puts a[1..3] = 'xyz'
puts a #axyzefg
=begin
 sub,sub!
 gsub,gsub!
 tr, tr!
 tr_s,tr_s!
 delete,delete!
 sqeeze,sqeeze!
 replace
=end
print "Original String:"
 puts a = 'abcdef-abcijkl'
 print "After Sub:"
 puts a.sub(/abc/, 'xyz') #xyzdef-abcijkl
 print "After Gsub:"
 puts a.gsub(/abc/, 'xyz') #xyzdef-xyzijkl
a = 'abcdefg-abchjkl'
puts a.sub(/abc/) {|str| 'xyz'} #xyzdefg-abchjkl
puts a.gsub(/abc/) {|str| 'qwe'} #qwedefg-qwehjkl
#tr,trs
a = 'aabbccddeeffgg'
puts a.tr('a-c','A-C') #AABBCCddeeffgg
puts a.tr_s('a-c','A-C') #ABCddeeffgg 3 tr_s remove duplicate
a = 'aabbccddeeffgg'
puts a.delete('a-f','d-g') #aabbccgg #delete both intercept
a = 'aabbccddeeffgghh'
puts a.squeeze('a-e') #abcdeffgghh
a = 'abc'
a.replace('xyz')
puts a
 #+ , << ,concat, *
 a = 'abc'
 puts a.__id__
 a << "def" #abcdef
 puts a
 puts a.__id__
 puts a = a + 'ghi' #abcdefghi
 puts a.__id__
 puts 'abc' * 2
=begin
 capitalize,capitalize!
 downcase,downcase!
 upcase,upcase!
 swapcase,swapcase!
=end
a = "abcDEF"
puts a.capitalize #Abcdef
puts a.upcase #ABCDEF
puts a.downcase #abcdef
puts a.swapcase #ABCdef
=begin
chomp,chomp!
chop, chop!
strip,strip!
lstrip,lstrip!
rstrip,rstrip!
=end
a = 'abcdefg\n'
p a.chomp  #abcdefg
p a.strip #abcdefg
p a.lstrip #abcdefg\n
p a.rstrip #abcdefg
puts a.chop #abcdefg
puts a.chop.chop #abcdef
puts a.chomp.chomp #abcdefg
#reverse,reverse!
 a= "abc"
 puts a.reverse
=begin
 length
 size
 count
 bytesize
 empty??
=end
a = 'abcdef'
puts a.size #6
puts a.length #6
puts a.bytesize #6
puts a.empty? #false
puts "".empty? #true
a = "addjhdjhd"
puts a.size #9
puts a.bytesize #if the y aaare char and int :bytrsize is length and not they will what will they be
puts "center,ljust,rjust"
a = "abc"
puts a.center(20,'-')
puts a.ljust(20, '*')
puts a.rjust(20,'*')
#dump
a = "abc\tdef\tghi"
puts a #abc     def     ghi
puts a.dump #"abc\tdef\tghi" :ouput as original
#unpack
puts '44or44oT44o8'.unpack('m') #�+��<
=begin 
    include
    index
    rindex
    match
    scan
=end
puts 'abcdefgh'.include?('abc') #true
puts 'abcdefg'.index('cd') #2 :becoz c found in position 2 :the first char position
puts 'abcdefg'.match(/[c-f]/) ##<MatchData "c">
print 'abcdefg'.scan(/[c-d]/) #["c", "d"]
puts "succ,succ!,next,next!"
puts 'abcdef'.succ #abcdeg
puts 'xyz'.succ #xza
puts '9999'.next #10000
puts "ZZZZZ".next #AAAAAA
=begin
each_line
lines
each_byte
bytes
ecah_char
chars
upto
=end
#"abc\ndef\nghi".each {|c| puts c } 
#abc
#def
#ghi
"abc".each_byte {|x| puts x }#97 98 99
"ab".each_char {|x| print x,' '} # a b
'a'.upto('c') {|c| print c } #abc
puts "abc".hex #2748
puts "azc".hex #10
puts "0xazc".hex #10
puts "010".oct #8
puts "0b010".oct #2
puts "0x010".oct #16
puts "123".to_i #123
puts "0123".to_i #123
puts "".to_i #0
puts"1.234".to_f #1.234
puts "01.23".to_f #1.23
puts "0x1.23".to_f #0.0
puts "".to_f #0.0
puts a = "abc".to_sym #:abc
puts a.__id__
b = :abc
puts b.__id__
puts a == b