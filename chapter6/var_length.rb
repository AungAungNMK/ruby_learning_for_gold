def max(first, *rest)
    max = first
    rest.each {|x| max = x if x > max }
    max
end
puts max(1)
puts max(1,2)
puts max(1,2,3,4)
data = [1,2,3]
puts m = max(*data)
puts max(*"hello world".each_char)