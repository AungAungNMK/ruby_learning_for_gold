=begin
map
each_with_index
each_cons
each_slice
reverse_each
include?
all?
any?
find
find_index
select
sort
sort_by
map
max
max_by
=end 
print [1,2,3,4,5].map{|i| i ** 2}
[:a, :b , :c, :d, :e].each_with_index{|value,index| puts "#{value} : #{index}"}
p [1,2,3,4,5].inject(0) {|result,v| result + v**2} #55
(1..10).each_cons(3){|i| p i} #a sin lite var array ,ta khu ko three var ;[1,2,3],[2,3,4]....
(1..10).each_slice(3) {|i| p i } # a sin lite all number, but not include the next time 
#[1, 2, 3]
#[4, 5, 6]
#[7, 8, 9]
#[10]
[1,2,3,4,5].reverse_each{|i| p i } #5,4,3,2,1
p [1,nil,3].all? #check not include nil in the array 
p [1,nil,3].any? #any one may be nil ;it retun true
p [].all? #true
p [].any? #false
p [1,2,3,4,5].include?(3) #true
p [1,2,3,4,5].find{|i| i % 2 == 0} #2
p [1,2,3,4,5].find_index{|i| i%2 == 0} #1
p [1,2,3,4,5].select{|i| i%2 == 0} 
p ["aaa","cc","b"].sort{|a,b| a.length <=> b.length}
p ["aaa","cc","b"].sort_by{|a| a.length}
p (1..10).map {|i| i%5 + i} #[2, 4, 6, 8, 5, 7, 9, 11, 13, 10]
p (1..10).max {|i,x| (i % 5 + i) <=> (x % 5 + x)}  #9
p (1..10).max_by{|x| x % 5 + x} #9
p [1,2,3,4,5].count 
p [1,2,3,4,5].first
p [1,2,3,4,5].first(3)
p (1..10).group_by{|x| x % 2 }
p [:a, :b, :c].zip([1,2,3], ["a", "b", "c"])
p [:a, :b, :c].take(1) #take return array
p [:a, :b, :c].first #first is only value
#p [:a, :b, :c, :d, :e].take{|e| e != :d} #[:a,:b,:c]
p [:a, :b, :c, :d, :e].drop(2) #[:c,:d,:e]
p [1,2,3,4,5].select {|x| x % 2 == 0}
p [1,2,3,4,5].reject {|x| x % 2 == 0}
p a = [1,2,3,4,5].lazy.select{|x| x % 2 == 0}
p b = a.map{ |x| x * 2}
p c = a.take(3)
p c.to_a
