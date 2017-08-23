[1,2,3] #Basic array literal
[] #empty array
[] #arrays are mutable :but this empty array is different.
%w[a b c] #['a','b','c']
Array[1,2,3] 
empty = Array.new
nils = Array.new(3) #[nil,nil,nil]
copy = Array.new(nils)
zoros = Array.new[4,0] #[0,0,0,0]
count = Array.new(3){|i| i + 1} #[1,2,3]
print  a = Array.new(3,'a') #['a','a','a']
print a[0].upcase! #'A'
print a  #['A','A','A']
print a = Array.new(3){ 'b'} #["b", "b", "b"]
print a[0].upcase!
puts 
print a

