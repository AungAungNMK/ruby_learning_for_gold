def fibonacci(n)
    return n <= 1 ? n :  n + fibonacci( n - 1 ) + fibonacci( n - 2 ) 
end
p fibonacci(10)
