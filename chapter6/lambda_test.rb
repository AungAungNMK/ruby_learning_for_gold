def componse(f,g)
    ->(x) { f.call(g.call(x))}
end
succ = componse(->x{x+1}, ->x{x*x})
puts succ.call(4)
puts "the another lanbda test----------------------"
product = ->(x,y){ x * y }
triple = product.curry[3]
puts [triple[10],triple[20]]
puts lambda { |w,x,y,z| w + x + y +z } .curry[1][2,3][4]


