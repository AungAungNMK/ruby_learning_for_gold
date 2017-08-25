print h = { :a => 1,:b => 2}
print a = h.to_a
puts 
print a.assoc(:a) #[:a,1]
puts
print a.assoc(:a).last #1
puts
print a.rassoc(1) #[:a,1]
puts
print a.rassoc(2).first #b
puts
print a.assoc(:c) #nil
puts
print a.transpose #[[:a, :b], [1, 2]] #swap rows and cols
puts
#convert to strig 
puts [1,2,3].join #123
puts [1,2,3].join(',') #1,2,3
puts [1,2,3].to_s #[1, 2, 3]
puts [1,2,3].to_s #[1, 2, 3]
puts [1,2,3].inspect #[1, 2, 3]

#binary conversion with pack
print [1,2,3,4].pack('CCC') #\001\002\003\004
print [1,2].pack('s2') #\001\000\002\000
print [1234].pack("i") #\321\004\000\000

#other methods
print [0,1]*3 #[0, 1, 0, 1, 0, 1]
print [1,[2,[3]]].flatten #[1,2,3]
print [1,[2,[3]]].flatten(1)#[1,2,[3]]
print [1,2,3].reverse
puts 
print a = [1,2,3].zip([:a,:b,:c]) #[[1, :a], [2, :b], [3, :c]]
print a.transpose #[[1, 2, 3], [:a, :b, :c]]
