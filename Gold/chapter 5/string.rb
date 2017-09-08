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