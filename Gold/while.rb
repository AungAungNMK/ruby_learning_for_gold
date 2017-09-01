sum = 0
i = 1
while i <= 10
    sum += i
    i += 1
end
puts "Sum is:#{sum}"
#with a block
sum = 0
(1..10).each do |i|
    sum += i
end
puts "Sum is:#{sum}"
require 'benchmark'
ITERAIONS = 1000000
Benchmark.bm do |b|
    b.report ("::") do 
        ITERAIONS.times do 
            sum = 0
            i = 1 
            while i <= 10 
                sum += i 
                i += 1
            end
        end
    end
end
