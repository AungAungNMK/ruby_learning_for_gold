[1,2,3].length #3
[].length #0
[].empty? #true
[nil].empty? #false
#[1,2,nil].nitems #2
[1,2,nil].count(nil) #1 :count number  of nil the array
[1,2,3].count {|x| x > 2} #1
print a = %w[a b c d]
a[0]
a[-1]
a[a.size-1]
a[-a.size]
a[5]
a[-5]
a.at(2) #c
a.fetch(1) #'b'
a.fetch(-1) #'d'
#a.fetch(5) #nil
#a.fetch(-5) #nil
#a.fetch(5,0) #0 :return second arguments if out of bound 
#a.fetch(5) {|x| x * x } #25 :compute value when out of bound
a.first #a
a.last #d
puts a.sample 
puts a.sample(3) # a,b,c :n == number of random elements 
a[0,2] #a,b
a[0..2]#a,b,c
a[0...2]#a,b
a[1,1] #b
puts"-2,2:.."
print a[-2.2] #c
print a[4,2] #[]
print a[5,1] #nil :
print a.slice(0..1)
print a.first(3)
print a.last(1)
print a.values_at(0,2)
puts 
print a.values_at(4,3,2,1)
puts
print a.values_at(0,2..3,-1) #[a,c,d,d]
print a.values_at(0..2,1..3) #['a','b','c','b','c','d']
