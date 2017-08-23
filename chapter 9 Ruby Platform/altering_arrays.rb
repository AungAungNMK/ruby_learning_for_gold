a = [1,2,3]
a[0] = 0
a[-1] = 4
a[1] = nil
print a 
a = [1,2,3]
a[3] = 4
a[5] = 6
a << 7
a << 8 << 9
print a 
a = [1,2,3]
print a + a
a.concat([4,5])
print a 
a = ['a','b','c']
 print a.insert(1,1,2) #["a", 1, 2, "b", "c"] :like [1,0] = [1,2]
 a = [1,2,3,4,5,6]
 puts a.delete_at(4) #5
 print a 
 puts a.delete_at(-1) #6
 puts a.delete_at(4) #nil :a is unchanged 
 print a 
 #all delete the array is after the operation
 a.delete(4) #4 :a = [1,2,3]
 a[1] = 1
 a.delete(1) #1 :a = [3] :both one is removed
 print a
 a = [1,2,3,4,5,6] 
 print a.delete_if {|x| x%2 == 0 } #[1,3,5]
 puts 
 print "Reject"
 print a.reject! {|x| x % 2 == 0 } # nil
 a = [1,2,3,4,5,6,7,8]
 a.slice!(0) #1
 print a 
 a.slice!(-1,1)
 print a 
 a.slice!(2..3)
 print a  #[2, 3, 6, 7]
 a.slice!(4,2) #nil
 a.slice!(5,2) #nil
 print a 
 puts
 puts
 #Replacing subarray
 a = ('a'..'e').to_a 
 print a 
 a[0,2] = ['A','B']
 print a  #["A", "B", "c", "d", "e"]
 a[2..5] = ['C','D','E']
 print a  #["A", "B", "C", "D", "E"]
 a[0,0] = [1,2,3]
 print a #[1, 2, 3, "A", "B", "C", "D", "E"]
 a[0..2] = [] #
 print a #["A", "B", "C", "D", "E"]
 a[-1,1] = 'Z'
 print a #["A", "B", "C", "D", "Z"]
 puts 
a[1,4] = nil
print a  


a = [4,5]
print a 
a.replace([1,2,3])
puts "After replace "
print a
a.fill(0)
print a # #[0,0,0]
a.fill(nil,1,3)
print a #[0, nil, nil, nil]
a.fill('a',2..4)
print a #[0, nil, "a", "a", "a"]
a[3].upcase!
print a #0, nil, "A", "A", "A"]
a.fill(2..4) { 'b'}
print a #o,nil,b,b,b
puts 
puts "compact:"
a.compact
print a 
a.compact!
puts 
print a 
a.clear
print a 