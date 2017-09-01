require 'benchmark'
ITERATIONS = 1000000
Benchmark.bm do |b|
    ITERATIONS.times do 
        b.report("::") do
        sum = 0 
        (1..10).each do |i|
            sum += i 
        end
    end
end
end

        
    
    

