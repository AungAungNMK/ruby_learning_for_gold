class Point
    include Comparable
    attr_accessor :x, :y
    def initialize(x,y)
        @x,@y = x,y
    end
    def add!(p)
        @x += p.x
        @y += p.y
        self
    end
    def <=>(other)
        return nil unless other.instance_of? Point
        self.x**2 + self.y**2 <=> other.x**2 + other.y**2
    end
    
end
#"Create mutuable class with Struct has two ways:"
 Struct.new("Point", :x, :y) #Create new class with Struct::Point
Point = Struct.new(:x, :y)# Create new class assign to  Point
p = Point.new(1,2)
puts p.x
puts p.y
puts p.x = 3
puts p.x
p[:x] = 4 #same as p.x = 
puts p[:x]#same as p.x
puts p[1]#same as p.y
puts "the point right now is:"
p.each {|c| puts c }
p.each_pair{|n,c| print n,c}
# in Struct-base class == operators is working,and can also used as hash key which provide each and each_pair
q =Point.new(4,2)
puts p==q
h = {q => 1 }
puts h[p]
puts q.to_s
# too make a class point immutable 
# Point = Struct.new(:x, :y)
#class Point
# undef []=,y=,[]=
#end
