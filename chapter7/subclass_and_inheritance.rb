class Pointp < Struct.new("Pointp", :x, :y, :z)
end
class Point
    def initialize(x,y)
        @x = x
        @y = y
    end
end
p2 = Point.new(1,2)
p3 = Pointp.new(1,2)
puts p2.to_s, p2.class
print p3.to_s, p3.class

