def multipliers(n)
    lambda{|data| data.collect{|x| x * n}}
end
double = multipliers(2)
p double.call([1,2,3])
eval("n=3", double.binding)
p double.call([1,2,3])
eval("n=3", double) #binding is required
p double.call([1,2,3])