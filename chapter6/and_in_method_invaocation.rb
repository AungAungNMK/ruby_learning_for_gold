a,b = [1,2,3], [4,5]
p sum = a.inject(0){|total,x| total += x}
p sum = b.inject(0){|total,x| total += x }
p sum1 = Proc.new{|total,x| total += x }
p sum = a.inject(0, &sum1)
p sum = b.inject(0, &sum1)