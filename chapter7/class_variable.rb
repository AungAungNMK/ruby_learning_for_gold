def Point 
    @@n = 0
    @@totalX = 0
    @@totalY = 0
    def initialize(x,y)
        @x,@y = x,y
        @@n += 1
        @@totalX += x
        @@totalY += y
    end
    def self.report
        puts "Number of point created: #@@n "
        puts "Avegare X coordinate : #{@@totalX.to_f/@@n}"
        puts "Average Y coordinate: #{@@totalY.to_F/@@n}"
    end
end
# class var are  aways evaluated in reference to the class object created by enclosing  class def statement

