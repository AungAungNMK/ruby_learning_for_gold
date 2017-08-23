require 'set'
print primes = Set[2,3,5,7]
puts primes.include? 2
puts primes.member? 1
#The find method and the detect ,apply associated block to each element of the colleciton in turn .
#If the block return anything other than flase or nil ,then the find returns that element and stops iterting.
#It the block always return nil or flase, then find require nil

#find the first subarray that includes the number 1 
data = [[1,2],[0,1],[7,8]]
print data.find{|x| x.include? 1} #[1,2]
print data.detect {|x| x.include? 3 } #nil
puts 
print data.find_index [0,1] #1
puts
data.find_index {|x| x.include? 3} #nil
print data.find_index {|x| x.include? 1 }