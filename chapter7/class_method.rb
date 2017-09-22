class Point 
    attr_accessor :x, :y
    def initialize(x,y)
        @x = x
        @y = y
    end
    
    def Point.sum(*point)
        x = y = 0
        point.each { |p| x += p.x; y += p.y}
        Point.new(x,y)
    end
    # define sum method with another function
    def self.sum(*point)
        x = y = 0
        point.each { |p| x += p.x; y += p.y}
        Point.new(x,y)
    end
    #there have some another way to add two pint like 
    # << syntax for adding method to a single object
    class << Point
        def self.sum(*point)
            x = y = 0
            point.each { |p| x += p.x; y += p.y}
            Point.new(x,y)
        end
    end
    # use self is commom way to define like this 
    class Point
        class << self
        end
    end
end
p p = Point.new(1,2)