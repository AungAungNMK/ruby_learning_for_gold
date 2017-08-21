def fibonacci_generator(x0,y0)
    Fiber.new do
        x,y = x0,y0
        loop do 
            Fiber.yield y
            x,y = y, x + y
        end
    end
end
g = fibonacci_generator(0,1)
10.times { print g.resume, " "}
puts "Another ways too define fibonacci generators --------------------------"
class FibonacciGenerator
    def initialize
        @a,@y = 0,1
        @fiber = Fiber.new do 
            loop do 
                @x,@y = @y,@x+@y
                Fiber.yield @x
            end
        end
    end
    def next 
        @fiber.resume
    end
    def rewind
        @x,@y = 0,1
    end
end
gg = FibonacciGenerator.new 
10.times { print gg.next, " " }
gg.rewind; puts 
10.times { print gg.next, " " }