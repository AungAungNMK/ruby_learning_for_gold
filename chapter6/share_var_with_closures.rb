def accessor_pair(initialValue =nil)
    value = initialValue
    getter = lambda{ value }
    setter = lambda { |x| value = x }
    return getter, setter
end
getX,setX = accessor_pair(0)
puts getX[]
setX[10]
puts getX[]
puts "Another test -------------------"
def multipliers(*args)
    x = nil
    args.map { |x| lambda {|y| x*y }}
end
double, triple = multipliers(2,3)
puts double.call(2)
puts triple.call(3)



