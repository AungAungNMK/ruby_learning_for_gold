class Point 
    def initialize(x,y)
        @x, @y = x,y
    end
    ORIGIN = Point.new(0,0)
    UNIT_X =Point.new(1,0)
    UNIT_Y = Point.new(0,1)
end
puts Point::UNIT_X
puts Point::UNIT_Y
# to defien class From outside
Point::NEGATIVE_UNIT_X = Point.new(-1,0)