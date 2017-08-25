print [1,2,3] & [1,3,5] #[1,3] :intetsection
puts 
print [1,1,3,5] & [1,2,3] #[1,3] :duplicate removed
puts
print [1,3,5] | [2,4,6] #[1,3,5,2,4,5] #set union
puts
print [1,3,5,5] | [2,4,6,6] #[1,3,5,2,4,6]
puts
print [1,2,3] - [2,3] #[1]
puts
print [1,1,2,2,3,3] - [2,3] #[1,1]


print small = (1..10).to_a #[1,...,10]
puts 
print even = (0..50).map {|x| x*2} #[2,4,6,8,..,100]
puts
print smalleven = small & even #[2,4,6,8,10]
print smalleven.include? (8) #true
puts
print [1,1,nil,nil].uniq
puts 
a = [1,2,3]
#iterate all possible two_element subarray (order matters)
a.permutation(2) {|x| print x } #[1, 2][1, 3][2, 1][2, 3][3, 1][3, 2]
puts 
#iterate all possible two_element subset(order does not matters)
a.combination(2) {|x| print x }
puts
#cartesian product of two set
print [1,2].product([3,4],[5,6])
