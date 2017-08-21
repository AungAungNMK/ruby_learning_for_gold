a,b = [1,2,3],[4,5]
puts sum = a.inject(0) { |total,x| total + x}
puts sum = b.inject(sum) {|total,x| total + x}
puts "Teest the method invocation with Proc:"
summation = Proc.new { |total,x| total + x }
puts sum = a.inject(0, &summation)
puts sum = b.inject(sum,&summation)