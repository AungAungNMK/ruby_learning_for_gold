require 'set'
=begin
set is a collection of values,without duplicates .
Unlike array ,the element of set have no error.
a hash can be considered a set of key/value pair.
a set can be implemented using a hash in which set element are stored as keys and value are ignored.
A sorted set is set that imopose an ordering on its element .
to_set is used to creaate to set
=end
s = Set.new(1..3)
puts s.include? 1
puts s.member? 0
print (1..5).to_set
print [1,2,3].to_set
print Set.new(1..5)
puts
print Set.new([1,2,3])
puts 
print Set.new([1,2,3]) {|x| x + 1}
print Set["cow","pig","hen"]

#testing ,comparing and combining set
=begin
1.a set S is a subset of T if all the element of S are also the element T. T is superset of S.
2.if two set are equal,the are both subset and superset of each other.
3.S is a proper_subset of T if it is a subset of T but not equal to T.T is proper_superbset of S.
=end

s = Set[2,3,5]
t = Set[2,3,5,7]
print s.subset? t #true :first is subset f last
puts t.subset? s #false 
puts s.proper_subset? t # true
puts s.superset? s #true
puts s.proper_superset? t #false 
print "test is a test for proper_superset test:"
puts t.proper_superset? s
puts s.subset? s #true
puts s.proper_subset? s #false

s = Set[2,3,5]
puts s.length
puts s.size
puts s.empty?
puts Set.new.empty?
# $,|,-,^ test for set
primes = Set[2,3,5,7]
odds = [1,3,5,7,9]
# intersection is set of values that in both set.
puts primes & odds  #3,5,7
puts primes.intersection(odds) #3,5,7 :name alias
# the union is set values that appear in either 
print primes | odds #1,2,3,5,7,8,9
primes.union(odds)
# a-b, is the elements of a except for those also in b
#print primes - odds #[2]
#print odds - primes #[1,9]
primes.difference(odds) #[2]
print primes^odds #[1,2,9]
#adding ,deleting set element
a = Set[]
print s << 1
s.add 2 #[1,2]
s << 3 << 4 << 5 #[1,2,3,4,5]
s.add 3 #no change
s.add? 6 #[1,2,3,4,5,6]
s.add? 3 #[1,2,3,4,5,6]

# merge
s = (1..3).to_set #[1,2,3]
s.merge(2..5)  #[1,2,3,4,5]
# delete set
s = (1..3).to_set
s.delete 1 # [2,3]
s.delete 1 #unchanged
s.delete? 1 #nil, :where no change
s.delete? 2 #[3] :reurn remaining set
# subtract
s =(1..3).to_set
s.subtract(2..10) # [1]

#delete_if
primes = Set[2,3,5,7]
primes.delete_if { |x| x % 2 == 1 } # [2]
primes.delete_if { |x| x %2 == 1} # [2] :no change
primes.reject! {|x| x%2 == 1} # nil : unchange

# in-place intersection
s = (1..5).to_set
t = (4..8).to_set
s.reject! {|x| not t.include? x } #[4,5]

# clear and replace
s = Set.new(1..3) # initial
s.replace(3..4) # [3,4]
s.clear #nil
s.empty? #true

# set iterators 
# For Sorted set the elements are yielded in their ascending sorted order.
#map! iterator transform each element of the set with a block ,altering teh set in place.collect is synonym.
s = Set[1,2,3,4,5]
s.each{ |x| print x }
print  s.map! {|x| x * x } # 1,4,8,16,25
print s.collect! {|x| x/2} # 0,2,4,8,12

# miscelleneous set methods 
s = (1..3).to_set
print s.to_a #[1,2,3]
print s.to_s # cannot readable ,not useful
print s.inspect # useful {1,2,3}
print s == Set[3,2,1] #true
# classify set elements as even and odd
s = (1..3).to_set
print s.classify {|x| x % 2 } #{1=>#<Set: {1, 3}>, 0=>#<Set: {2}>}
puts 
puts
print s.divide {|x| x % 2  }
# block shoud return true if two values belong to the same subset,and false otherwise
s = %w[ant hog tiget pig hen].to_set
puts
puts
print t = s.divide { |x,y| x[0] == y[0] }
print t.flatten!
print t == s  #true



 


 




