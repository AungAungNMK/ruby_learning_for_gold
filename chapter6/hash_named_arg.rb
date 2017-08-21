def sequence(args)
    n = args[:n] || 0
    m = args[:m] || 1
    c = args[:c] || 2
    a = []
    n.times { |i| a << m * i + c }
    a
end
puts sequence({:n=> 3,:m=>5})
puts sequence(:n=> 3,:m=>5)
def sequence2(n,m,c)
    i = 0
    while(i < n)
        yield i * m + c
        i += 1
    end
end
puts sequence2(5,2,2){ |x| puts x}


def sequence3(n,m,c, &d)
    i = 0
    while(i < n)
        d.call(i * m + 1)
        i += 1
    end
end
print "This is te result from sequence3"
sequence3(5,2,2) { |x| puts x}

def sequence4(n,m,c, d)
    i = 0
    while(i < n)
        d.call(i * m + 1)
        i += 1
    end
end
print "This is te result from sequence4"
p = Proc.new { |x| puts x}
sequence4(5,2,2,p)


def sequence5(args, &d)
    n,m,c = args[:n], args[:m], args[:c]
    i = 0
    while(i < n)
        d.call(i * m + 1)
        i += 1
    end
end
print "This is te result from sequence5"
p = Proc.new { |x| puts x}
sequence5(5,2,2,p)


