def multipliers(n)
    lambda{|data| data.collect{|x| x * n}}
end
double = multipliers(2)
puts double.call([1,2,3])
eval("n=3", double.binding)
puts double.call([1,2,3])
eval("n=3", double)
puts double.call([1,2,3])