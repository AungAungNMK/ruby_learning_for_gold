a = [1,2,3]
p a.class #array
a = Array[1,2,3]
p a #[1,2,3]
aa = Array.new(3, "str")
p aa #["str", "str", "str"]
a = Array.new([1,2,3])
p a #[1,2,3]
a = Array.new(3) {|i| i * 3}
p a #[0,3,6]
=begin
<<
push
concat
insert
+
unshift
=end
a = [1,2,3]
a << 4 
p a #[1,2,3,4]
a << 5 << 6
p a #[1,2,3,4,5,6]
a.insert(3,9)
p a #[1,2,3,4,5,6,9]
p a.__id__
b = a + [10]
p b 
p b.__id__
a = [1,2,3]
p a.unshift(10)
#[]=. fill ,replace
a = [1,2,3]
a[1] = 10
p a #[1,10,3]
a[1..2] = [11,12]
p a #[1,11,12]
a[8] = 8
p a 
a = [1,2,3]
a.fill("s")
p a  #["s", "s", "s"]
a.fill("t",1..2)
p a #["s", "t", "t"]
a.fill(1..2) {|index| index} 
p a #["s", 1, 2]
###
a = [1,2,3]
p a.__id__
a = [1,2,3]
p a.__id__
a.replace([4,5,6])
p a 
p a.__id__
puts "If you replace the array with new data ,the object_id is always same."
=begin
    []
    slice
    values_at
    at
    fetch
    first
    last
    assoc
    rassoc
=end
a = [1,2,3]
p a[1] #2
p a.at(1) #2
p a[1..2] #[2,3]
p a.values_at(1) 
p a.fetch(2)
p a.fetch 4, "ERROR"
a.fetch(4) {|n| "ERROR #{n}"}
a = [1,2,3,4,5]
p a.first
p a.last
p "firt 3: #{a.first(3)}"
a = [[1,2],[3,4],[5,6],[7,8]]
p a.assoc(3)
p a.rassoc(4) #ass
p a.include? ([3,4]) #true
p a.include?(3) #false
a = [1,2,3,4,5,6,7,8,9]
#index
#rindex
p a.index(2) #1
p a.rindex(4) #3
=begin
delete_at
delete_if
reject!
delete
clear
slice!
shift
pop
=end
a = [1,2,3,4,5]
 p a.delete_at(2)
 p a 
 a.delete_if {|n| n %2 == 0}
 p a
 p a.delete(1)
 p a
 p a.delete(8)
 p a 
 p a.clear
 array = [1,2,3,4,5]
 array.slice!(2,2)
 p array
 a = [1,2,3,4,5]
 p a.shift(2)
 p a.shift
 p a 
 a = [1,2,3,4,5]
 p a.pop(2)
 p a 
 a.pop
 p a 
 a = [1,2,3,4,5]
 p a - [1,2]
 p a - [1,3,5,7] #takes from the first array
 p [1,2,3] | [1,2,5]
 p [1,2,3] & [1,3,5]
 p [1,2,3] == [1,3,5]
 p [1,2,3] <=> [1,3,5]
=begin
 each
 each_index
 cycle
 reverse_each
=end
[1,3,5,7,9].each { |x| p x * 2}
[1,3,5,7,9].each_index {|i| p i * 2}
# [1,2,3].cycle {|c| p c } # no end cycle
p [1,2,3].join(",")
p [1,2,3].length
p [].length
p [].empty?
p [1,nil,nil,nil,nil,3,4,5,6].length
# p [1,nil,nil,nil,nil,3,4,5,6].nitems :this method not work :don't know why'
a = [1,3,4,12,6,88,2]
p a.sort
p a 
p a.sort!
p a 
a = [22,33,3,1,6,99]
p a.sort{|a,b| a <=> b}
p a.sort{|a,b| b <=> a}
=begin
uniq
compact
reverse
flatten
collect
map
shuffle
=end
p [1,1,2,2,3,3,4,5].uniq
p [1,2,nil,nil,nil,3,4,5].compact
p [1,2,3,4,5].reverse
p [[[1,2],3],[[4,5],6]].flatten
p [[[1,2],3],[[4,5],6]].flatten(1)
p [1,2,3,4,5].map{|n| n*2}
p [1,2,3,4].shuffle
#product
#zip
#*
p [1,2].product(["a","b","c"]) #like *
p [1,2].zip(["a","b"]) #depends on position
p [1,2] * 4 
p ["somestring"].pack('m')
