class Point
    def initialize(x,y)
        @x,@y = x,y
    end

        @@classvar = 1
        ORIGIN = Point.new(0,0)
   
end
puts Point::ORIGIN.instance_variables #@x,@y
puts Point.class_variables #classvar
puts Point.constants#ORIGIN