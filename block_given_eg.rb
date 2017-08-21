def sequence(n,m,c)
    i, s = 0, []
    while (i < n)
        y = n * m + c
        yield y if block_given?
        s << y
        i += 1
    end
    s
end
sequence(3,5,1)