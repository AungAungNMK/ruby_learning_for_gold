def circle(n,r)
    n.times do |i|
        angl = Math::PI * 2 * i / n
        yield r * Math.cos(angl), r * Math.sin(angl)
    end
end
circle(4,1) {|x,y| print "(%.2f, %.2f) ", x, y }