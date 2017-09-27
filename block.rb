1.upto(10) do |i|
    1.upto(10) do |i|
        print "#{i}"
    end
    print "row is #{i} \n"
end
puts "test the other in Block--------------"
x = y = 0
1.upto(4) do|x;y|
y = x + 1
p y * y
end
[x,y]

