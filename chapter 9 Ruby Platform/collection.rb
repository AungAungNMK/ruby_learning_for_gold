=begin
Any Enumerable object must have an each iterator.
Enumerable provides a simple variant each_with_index , which yield an element of the collection and 
    an integer.
For array, the integer is the array index.
For IO Object, the integer is the line number.
For other object, the integer is what the array index would be if the collection was converted to an array.
=end
(5..7).each {|x| print x }
puts
(5..7).each_with_index {|x,i| print  x,i}
puts 
#After the first pass through the collection, modification to that collection do not affect the behaviour of cycle.
    #each_cons and each_slice are iterator that yield the subarray of the collection.
    (1..10).each_slice(4) {|x| print x }
puts 
(1..5).each_cons(3) {|x| print x }
puts 
#collect method applies a block to each element of collection anad collect the return value of the block into a new array.
#map is synonym.
data = [1,2,3,4]
print root = data.collect{|x| Math.sqrt(x) }
puts 
word = %w[hello world]
print upper = word.map{|x| x.upcase }
puts 

#The .zip method interleaves the element of one Enumerable collection with the elements of zeros or more other collection
 #   and yield an array of element(one from each collection) to the associated block. IF no block is privided
  #  the return value is an array of arrays.
(1..3).zip([4,5,6]) {|x| print x.inspect} #[1, 4][2, 5][3, 6]
puts
(1..3).zip([4,5,6],[7,8]) {|x| print x }  #[1, 4, 7][2, 5, 8][3, 6, nil]
puts 
(1..3).zip('a'..'c'){|x,y| print x,y} #1a2b3c
puts 
print (1..3).zip('a'..'z')
puts 
print (1..3).zip('a'..'b')
print (1..3).to_a # [1,2,3] :to convert to array
puts 
print (1..3).entries  # it almos the same with to_a == .entries
puts
require 'set'
print (1..3).to_set  # convert to set
