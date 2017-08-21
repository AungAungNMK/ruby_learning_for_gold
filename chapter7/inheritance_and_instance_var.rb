class Point
    def initialize(x,y)
        @x,@y = x,y
    end
end

class Point3D < Point
    def initialize(x, y, z)
        super(x,y)
        @z = z
    end
    def to_s
        puts "(#@x, #@y, #@z)"
    end
end
Point3D.new(1,2,3).to_s