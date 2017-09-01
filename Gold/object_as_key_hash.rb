require 'benchmark'
class KeyObject
    def eql?(other)
        super
    end
end
21.times do |exp|
    target_key = nil
    size = 2**exp
    hash = {}
    (1..size).each do |n|
        index = KeyObject.new
        target_key = index if n > size/2 && target_key.nil?
        hash[index] = rand
    end
    GC.disable
    Benchmark.bm do |b|
        b.report("#{size}") do
        10000.times do
            val = hash[target_key]
        end
    end
end
GC.enable
end

