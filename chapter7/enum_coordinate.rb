
class Point
    include Comparable
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
    def each
    yield @x
    yield @y
end
    def +(other)
        #add type checking error for other class
       
        Point.new(@x + other.x, @y + other.y)
    rescue
         raise TypeError, "Point addition with an arg that does not quak like a point!"
    end
    def <=>(other)
    return nil unless other.instance_of? Point
        @x**2 + @y**2 <=> other.x**2 + other.y**2
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
    #== method for point
  #  def ==(o)
       # if o.is_a? Point
        #    @x == o.x, @y == o.y
       # else
       #     false
      #  end
   # end
    
end
p = Point.new(1,2)
q = Point.new(p.x*2,p.y*3)
p.each { |x| puts x }
puts p
puts p.x,p.y
puts q
p.class
p.is_a? Point
p1,q1 = Point.new(1,0), Point.new(0,1)
puts p1 == q1
puts p1 < q1
puts p1 > q1


