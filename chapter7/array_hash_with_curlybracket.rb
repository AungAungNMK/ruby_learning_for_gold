"this can't be test ,this just  a type of sample for array and hash with []'"
def [](index)
    case index
when 0, -2: @x
when 1, -1: @y    
when :x, "x": @x
when :y, "y": @y
else
    nil
end
end

    

    