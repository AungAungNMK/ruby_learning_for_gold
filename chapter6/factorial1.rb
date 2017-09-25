def factorial(n)
        raise "argument error must be > 0" if n < 1
        return 1 if n == 1
        p n * factorial(n-1)
end
puts factorial(10)