def add_two(a,b=5)
    sum = a + b
end
puts add_two(2)
puts add_two(2,2)
def add_two1(a, b: 5)
    sum = a + b
end
puts add_two1(2)
#puts add_two1(2,2)