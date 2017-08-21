def two;yield 1,2;end
two {|*x| puts x }
two {|x| puts x }
puts "-----------------------------------------"
def five
    yield 1,2,3,4,5
end
five do |head, *body, tail|
    print head,body,tail
end
