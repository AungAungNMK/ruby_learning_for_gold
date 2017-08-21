# Enumerable
#Comparable
class Point 
    include Comparable,Enumerable
    puts "text".is_a? Comparable
    puts Enumerable == "text"
    puts "text".instance_of? Comparable
end
puts "the next text for the Enumerable and Comparable"
module Iterable
    include Enumerable
    def each 
        loop { yield self.next }
    end
end
# the normal way to include mixx in is Module.include
#the anoter way is Object.extend
count = Object.new
def count.each
    yield 3
    yield 2
    yield 1
end
count.extend(Enumerable)
print count.sort