class Point
    def initialize(x,y)
        @x,@y= x,y #cartesian coordinates
    end
    # make the factory method new private
    private_class_method :new
    def Point.cartesian(x,y)# factory method for cartesian method for coordiante
        new(x,y)
    end
    def Point.polar(r, theta) # factory for cartesian coordinate
        new(r*Math.cos(theta), r*Math.sin(theta))
    end
end
puts p = Point.new(1,2)

