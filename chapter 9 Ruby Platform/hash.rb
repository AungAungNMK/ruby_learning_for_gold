#create hash in the following format
=begin
{:one => 1,:two=> 2}
{ :one, 1,:two, 2}
{:one 1,:two 2}
{}
Hash.new
Hash{:one, 1,:two, 2}
=end
puts :a=>1, :b=>2
puts a:1,b:2
#hash indexing
h = {:one => 1,:two=>2}
print h[:one]
puts h[:three]
print h.assoc :one #[:one,1]
puts h.index 1 #:one
puts h.index 4 #nil
print h.rassoc 2 #[:two,2]

hash = {:a=>1,:b=>2}
print hash.key?(:a) #true
print hash.has_key?(:b) #true
puts hash.include?(:c) #flase
puts hash.member?(:d) #false

puts hash.value?(1) #true
puts hash.has_value?(3) #false


#fetch is alternative to [] when is querying values in a hash
h = {:a => 1, :b => 2, :c => 3}
print h.fetch(:a)
puts 
#print h.fetch(:d)
h.fetch(:d, 33)
print h.fetch(:d) {|k| k.to_s} #d :call block if the key not found
puts 
h = {:a => 1, :b => 2, :c => 3}
print h.values_at(:c)
print h.values_at(:a,:b)
print h.values_at(:d, :d, :a)

# extract key nad value using block
 h = {:a => 1, :b => 2, :c => 3}
 print h.select {|k,v| v%2 == 0 }
 h.select {|k,v| print k,v}
puts 
puts
 #sorting key and vlaue in hash.
 h = {}
 h[:a] = 1
 h.store(:b,2)
 print h 
 h.replace({1=>:a,2=>:b})
 j = {}
 k = h.merge(j)
=begin
print { :a=>1, :b=>2}.merge(:a=>3, :c=>4)
puts
h.merge!(j)
#if there is block ,use it to decide which value to use
h.merge!(j) {|key,h,j| h}
h.merge(j) {|key,h,j| (h+j)/2}
=end

#updating is a synonym for merge!
h = {:a=>1,:b=>2}
print h.update(b:4,c:9)
print h.update(b:4,c:9)


#removing hash entity
h[:a] = nil
print h
print h.include? :a #true
print h.delete(:b) #4
print h.include? :b #false
print h.delete :b #nil
h.delete(:b) {|k| raise IndexError, k.to_s}
print h.clear
