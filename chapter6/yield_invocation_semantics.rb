p = Proc.new{|x,y| print x,y }
p.call(1)
puts "------"
p.call(1,2)
puts "------"
p.call(1,2,3)
puts "------"
p.call([1,2])
puts "Test method invocation"
l = lambda { |x,y| print x,y}
puts "------"
l.call(1,2)
puts "------"
l.call(1)
puts "------"
l.call(1,2,3)
puts "------"
l.call([1,2])
puts "------"
l.call(*[1,2])
puts "------"
