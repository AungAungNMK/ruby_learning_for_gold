print square = [1,2,3].collect {|x| x*x }
puts "Select::"
print evans = (1..10).select {|x| x%2 == 0 }
puts "Reject:"
print evans = (1..10).reject {|x| x%2 == 0 }
puts "Inject::>"
data = [2,5,3,4]
puts sum = data.inject {|sum,x| sum + x}
puts fp = data.inject(1.0) {|p,x| p*x }
puts max = data.inject {|m,x| m>x ? m : x }

