require 'singleton'
class PointState
    include Singleton
    def initialize(x,y)
        @x,@y = x,y
        PointState.instance.record(self)
        @n, @totalX, totalY = 0, 0.0, 0.0
    end
    def record(point)
        @n += 1
        @totalX +=point.x
        @totalY += point.y
    end
    def report 
        puts "Number of point created: #@n"
        puts "Average X coordinates: #{totalX/@n}"
        puts "Average Y coordinates: #{totalY/@n}"
    end
end

PointState.instance.record
