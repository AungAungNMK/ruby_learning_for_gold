h = {:a=>1,:b=>2,:c=>3}
puts h.length #3
puts h.size #3
puts h.empty? #false
#puts {}.empty? #
print h.keys #[:a, :b, :c]
puts
print h.values #[1, 2, 3]
puts
print h.to_a #[[:a, 1], [:b, 2], [:c, 3]]
puts
print h.flatten #[:a, 1, :b, 2, :c, 3]
puts
print h.sort #[[:a, 1], [:b, 2], [:c, 3]] #sorted pair
puts
h = {:a=>11,:b=>2,:c=>93}
print h.sort{|a,b| a[1]<=> b[1]} #sort pair by value
puts 
puts
#hash iterator
h = {:a=>1,:b=>2,:c=>3}
h.each{|value| print value}
h.each_key{|k| print k}
h.each_value{|v| print v}
puts
h.each_pair {|k,v| print k,v }
puts
puts
#shit :remove nad return one element
print h.shift[1] while not h.empty? # 1 mean all value not position 
puts 
# hash default value
empty = {}
empty["one"] #nil :no data 
empty = Hash.new(-1) #default = -1
empty["one"] #-1
empty.default = -2
empty["two"] #-2
empty.default #-2
puts
#if the key is not defined, return the successor of the key
print push1 = Hash.new {|hash,key| key.succ} #{}
puts
print push1[1] #2
puts
print push1["one"] #'onf' :one,onf,ong 
print push1.default_proc
print push1.default(10) #11 :default return for key 10
# the lazily initialized hash maps integers to their factorial
fact  = Hash.new{|h,k| h[k] = if k > 1; k*h[k-1] else 1 end} #
print fact #nil
puts
print fact[4] #24
puts
puts fact[1] #1
fact.fetch(5) # Index error,key not found




