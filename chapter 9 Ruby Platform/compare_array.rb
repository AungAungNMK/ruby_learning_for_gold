#two array are equal if they have same nymmber,same value, same order .
#test with ==, .eql? 
puts [1,2] <=> [3,4] #-1
puts [1,2] <=> [0,0,0] #1
puts [1,2] <=> [1,2,3] #-1 first array is short
puts [1,2] <=> []  #1
puts [1,2] <=> [1,2] #0

