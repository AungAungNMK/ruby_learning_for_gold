$state = false
def flipflop(x)
    if !$state
        result = (x==3)
        if result
            $state = !(x==5)
        end
        result
    else
        $state = !(x == 5 )
        true
    end
end
$state2 = false
def flipflop2(x)
    if !$state2
        $state2 = (x == 3)
    else
        $state2 = !(x >= 3 )
        true
    end
    
end
puts "----------------"
(1..10).each { |x| print x if x==3..x>=3}
puts "----------------"
(1..10).each { |x| print x if flipflop2(x) }
puts "----------------"
(1..10).each { |x| print x if flipflop(x) }
