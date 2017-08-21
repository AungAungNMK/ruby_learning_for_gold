class Point
    attr_accessor :x, :y
    attr_reader :x, :y
    def initialize(x,y)
        @x,@y = x,y
    end
    #getter
    def x
        @x
    end
    def y
        @y
    end
    #setter
    def x=(value)
        @x = value
    end
    def y=(value)
        @y = value
    end
    def +(other)
        #add type checking error for other class
       
        Point.new(@x + other.x, @y + other.y)
    rescue
         raise TypeError, "Point addition with an arg that does not quak like a point!"
    end
    def -@
        Point.new(-@x, -@y)
    end
    def *(scalar)
        Point.new(@x*scalar, @y*scalar)
    end
    
    def coerce(other)
        [self,other]
    end
    
    def to_s
        "(#@x,#@y)"
    end
    
end
p = Point.new(1,2)
q = Point.new(p.x*2,p.y*3)
puts p
puts p.x,p.y
puts q
p.class
p.is_a? Point
