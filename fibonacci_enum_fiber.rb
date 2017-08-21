class Generator
    def initialize(enum)
        @enum = enum
        create_fiber
    end
    def next
        @fiber.resume
    end
    def rewind
        create_fiber
    end
    private
    def create_fiber
        @fiber = Fiber.new do 
            @enum.each do |x|
                Fiber.yield(x)
            end
            raise StopIteration
        end
    end
end
 g = Generator.new(1..10)
 loop { print g.next }
 g.rewind

 g = (1..10).to_enum
 loop { print g.next }
    


